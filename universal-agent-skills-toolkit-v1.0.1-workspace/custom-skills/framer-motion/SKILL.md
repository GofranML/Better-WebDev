---
name: framer-motion
description: Specialist skill for Framer Motion and Motion (v14+) animation library. Use for declarative React component animation, layout transitions, gestures, AnimatePresence, spring physics, and modern WAAPI DOM animations.
---

# Framer Motion & Motion Specialist

Specialist guidance for implementing fluid, accessible, and performant animations using Framer Motion (React) and Motion (Vanilla JS/WAAPI), verified against the Motion monorepo (`./tools/animation/motion`, v14.5.0).

---

## Decision Matrix: When to Use Motion vs GSAP

Do not force one tool onto every animation task. Select based on requirements:

| Requirement / Pattern | Recommend **Framer Motion / Motion** | Recommend **GSAP (`gsap-motion-specialist`)** |
| :--- | :---: | :---: |
| **React Component Mount/Unmount** (`AnimatePresence`) | **Optimal** | Unnatural (requires manual lifecycle wiring) |
| **Declarative React UI** (`<motion.div>`) | **Optimal** | Verbose `useRef` + `useEffect` imperative code |
| **Layout & FLIP Animations** (`layout`, `layoutId`) | **Optimal** | Complex Flip plugin setup |
| **React Drag & Gestures** (`whileHover`, `drag`) | **Optimal** | Draggable plugin required |
| **Spring Physics** (`type: "spring"`) | **Native & Smooth** | Requires CustomEase / physics plugins |
| **Complex Multi-Stage Timeline Sequencing** | Supported (basic) | **Optimal** (`gsap.timeline()` scrubbing) |
| **Pinning & Complex Scroll Storytelling** | Basic | **Optimal** (`ScrollTrigger` pinning/scrub) |
| **Canvas / WebGL / Three.js Tweens** | Not recommended | **Optimal** (arbitrary JS object interpolation) |
| **SVG Path Morphing** | Basic | **Optimal** (`MorphSVG` shape tweening) |

> **Guideline:** If a user requests a React UI transition, modal dialog reveal, animated tab pill, or spring gesture, use **Framer Motion**. If they request complex timeline scrubbing, canvas/WebGL tweens, or pinned storytelling, delegate to **`gsap-motion-specialist`**.

---

## Core API Cheat Sheet

### Essential React Exports (`framer-motion`):
- **Components:** `motion`, `AnimatePresence`, `LayoutGroup`, `LazyMotion`, `MotionConfig`
- **Hooks:**
  - `useAnimation()` / `useAnimationControls()`: Imperative playback controls.
  - `useAnimate()`: Scoped DOM-level selector animation.
  - `useInView()`: Viewport intersection detection.
  - `useScroll()`: Scroll progress monitoring (`scrollYProgress`).
  - `useSpring()` / `useTransform()` / `useMotionValue()`: Real-time reactive motion values.
  - `useReducedMotion()`: System reduced-motion preference detection.

### Essential Vanilla JS Exports (`motion`):
- `animate(target, keyframes, options)`: WAAPI-driven animation.
- `timeline(sequence, options)`: Chained sequence timeline.
- `scroll(callback, options)`: Scroll-driven animation hook.
- `inView(target, onEnter)`: Intersection reveal trigger.
- `spring()`: Spring physics easing calculator.

---

## Detailed References

- [React Patterns & Recipes](./references/react-patterns.md): Variants, AnimatePresence, shared element tabs, drag constraints.
- [Vanilla JS & WAAPI Reference](./references/vanilla-waapi.md): Hardware-accelerated animations outside React.
- [Accessibility & Performance Guide](./references/accessibility-performance.md): `useReducedMotion`, bundle splitting with `LazyMotion`, and compositor hints.

---

## Implementation Rules

1. **Never Animate Layout Geometry Directly:** Avoid animating `width`, `height`, `margin`, or `left`/`top` directly. Use transforms (`x`, `y`, `scale`) or enable Framer Motion's GPU-accelerated `layout` prop.
2. **Always Honor Reduced Motion:** Check `useReducedMotion()` or configure `<MotionConfig reducedMotion="user">` for accessibility compliance.
3. **Prevent Leaks in AnimatePresence:** Always provide persistent, non-index `key` attributes to children of `<AnimatePresence>`.
4. **Preserve Stack Alignment:** Do not introduce Framer Motion into a non-React project when vanilla CSS transitions or GSAP are already established.

