---
name: council
description: Convene a four-voice council for ambiguous decisions, tradeoffs, and go/no-go calls. Use when multiple valid paths exist and you need structured disagreement before choosing.
metadata:
  origin: ECC-curated
---

# Council

Convene four advisors for ambiguous decisions:
- **Architect**: correctness, maintainability, long-term architectural implications
- **Skeptic**: premise challenge, simplification, assumption breaking
- **Pragmatist**: shipping speed, developer impact, operational reality
- **Critic**: edge cases, downside risk, potential failure modes

This skill is designed for **decision-making under ambiguity**, not routine code review, implementation planning, or minor refactors.

## When to Use

Use council when:
- A decision has multiple credible paths and no obvious winner.
- You need explicit tradeoff surfacing.
- The user asks for second opinions, dissent, or multiple perspectives.
- Conversational anchoring is a real risk.
- A go / no-go call would benefit from adversarial challenge (e.g. monorepo vs polyrepo, ship now vs polish, refactor vs rewrite).

## When NOT to Use

- Verifying code correctness (use direct test suites or `verification-before-completion`).
- Breaking a feature into tasks (use `writing-plans`).
- General codebase auditing (use `codebase-improve`).
- Straightforward factual questions (answer directly).

## Roles & Perspective Lenses

| Voice | Lens | Focus |
| --- | --- | --- |
| **Architect** | Structural integrity | Correctness, design patterns, long-term maintainability. |
| **Skeptic** | Premise challenge | Why do this at all? Simplest credible alternative, YAGNI check. |
| **Pragmatist** | Operational reality | Delivery speed, user impact, implementation cost, MVP viability. |
| **Critic** | Downside protection | Failure modes, edge cases, tech debt, security risks. |

## Workflow

### 1. Extract the Core Decision Question
Reduce the dilemma to one explicit prompt:
- What are we deciding?
- What constraints matter?
- What counts as success?

### 2. Form the Initial Architect Position
Write down the primary technical inclination first (initial position, 3 core arguments, main trade-off) so the final verdict does not passively mirror external dissent.

### 3. Convene the Council
When running in Antigravity:
- **Subagent Mode (when parallel isolation is desired):** Dispatch isolated subagents using `invoke_subagent` (`TypeName: "research"` or `"self"` with `Workspace: "branch"`) providing ONLY the decision prompt and minimal context (anti-anchoring).
- **Direct Multi-Lens Mode (in-session):** Directly adopt the 4 distinct perspectives in sequence, rigorously defending each role's priorities without early compromise.

#### Prompt Shape for Voices:
```text
Role: [Skeptic | Pragmatist | Critic]
Question: [decision question]
Context: [minimal relevant constraints]

Respond with:
1. Position: 1-2 direct sentences
2. Reasoning: 3 concise bullet points
3. Risk: biggest downside in this position
4. Surprise: one blindspot other voices may miss
(Keep under 250 words, direct, zero hedging)
```

### 4. Synthesize with Bias Guardrails
- Do not dismiss dissent without technical justification.
- Highlight the strongest counter-argument, even if rejected.
- If Skeptic and Pragmatist both oppose the Architect's initial position, treat that as a strong signal to simplify.

### 5. Present the Compact Verdict
Present the council outcome in this scannable format:

```markdown
## Council: [Decision Title]

**Architect:** [1-2 sentence position + key reason]
**Skeptic:** [1-2 sentence position + key reason]
**Pragmatist:** [1-2 sentence position + key reason]
**Critic:** [1-2 sentence position + key reason]

### Verdict
- **Consensus**: [where voices agreed]
- **Strongest Dissent**: [most compelling counter-point]
- **Premise Check**: [was the original premise challenged?]
- **Final Recommendation**: [synthesized path forward]
```

## Persistence Rule
Do not write ad-hoc notes to shadow paths. If the council produces a permanent architectural decision, formalize it using [`architecture-decision-records`](../architecture-decision-records/SKILL.md) in `docs/adr/`.

