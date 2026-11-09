---
name: click-path-audit
description: Trace every user-facing button/touchpoint through its full state change sequence to find bugs where functions individually work but cancel each other out, produce wrong final state, or leave the UI in an inconsistent state. Use when systematic debugging found no bugs but users report broken buttons, or after any major refactor touching shared state stores.
metadata:
  origin: ECC-curated
---

# Click-Path Audit — Behavioral Flow Audit

Find subtle frontend bugs that static code reading misses: state interaction side effects, race conditions between sequential calls, and handlers that silently undo each other.

## The Problem This Solves

Traditional debugging checks:
- Does the function exist? (wiring)
- Does it throw errors? (crashes)
- Does it return data? (data flow)

Traditional debugging frequently misses:
- **Does the final UI state match what the button label promises?**
- **Does function B silently undo what function A just did?**
- **Does shared state (Zustand, Redux, React Context, Pinia, Alpine, Livewire) produce unexpected side effects?**

*Classic Bug Example:* A "New Email" button called `setComposeMode(true)` then `selectThread(null)`. Both worked individually. But `selectThread` had a side effect resetting `composeMode: false`. The button did nothing. Static debugging missed it completely.

---

## Audit Workflow

For each interactive touchpoint in the target UI area:

1. **IDENTIFY** the handler (`onClick`, `onSubmit`, `onChange`, `@click`, `wire:click`).
2. **TRACE** every function call in the handler, in execution order.
3. **EVALUATE** for each call:
   - What state does it READ?
   - What state does it WRITE?
   - Does it have SIDE EFFECTS or RESETS on shared stores?
4. **CHECK CONFLICTS**: Does any later call UNDO a state change from an earlier call?
5. **CHECK INTENT**: Is the FINAL state what the user expects from the button label?
6. **CHECK CONCURRENCY**: Are there async race conditions?

---

## Step-by-Step Procedure

### Step 1: Map State Store Side Effects
Before auditing individual touchpoints, map actions in shared state stores:
- Which actions set state?
- Which actions reset other state fields as side effects?
- Document: `actionName → {sets: [...], resets: [...]}`

*Watch especially for "Dangerous Resets" where an action clears state fields that it does not logically own.*

### Step 2: Audit Touchpoints Against Common Bug Patterns

1. **Sequential Undo:**
   ```javascript
   handler() {
     setState_A(true);     // sets X = true
     setState_B(null);     // side effect: resets X = false!
   }
   // Result: X is false. First call was cancelled out.
   ```
2. **Async Race Conditions:**
   Two uncoordinated network requests resolving in unpredictable order and overwriting state.
3. **Stale Closures:**
   Callback memoized without all dependent state tokens in its dependency array.
4. **Missing State Transition:**
   Button promises "Save" or "Delete" but only toggles visual state without dispatching API mutation.
5. **Conditional Dead Path:**
   Handler checks a condition that is guaranteed false due to earlier logic in the same tick.
6. **Lifecycle / Hook Interference:**
   A `useEffect` or watcher observes a state variable and immediately cancels it back to default.

### Step 3: Structured Finding Format

```markdown
CLICK-PATH-NNN: [severity: CRITICAL | HIGH | MEDIUM | LOW]
  Touchpoint: [Button label / Selector] in [file:line]
  Pattern: [Sequential Undo | Async Race | Stale Closure | Missing Transition | Dead Path | Effect Interference]
  Handler: [function name or inline callback]
  Trace:
    1. [callA] → sets {field: value}
    2. [callB] → RESETS {field: value}  ← CONFLICT
  Expected: [what the user promises]
  Actual: [what the state machine actually does]
  Fix: [exact recommendation]
```

---

## When to Use

- When a button or form "does nothing" despite throwing no console errors.
- After refactoring shared state stores (Zustand, Pinia, Redux, Livewire component properties).
- Pre-release behavioral audits on critical user journeys (checkout, authentication, data exports).
