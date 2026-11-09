# Vanilla JS & Web Animations API (WAAPI) Reference

Patterns verified against Motion v14.5.0 (`packages/motion` and `packages/motion-dom`).

---

## 1. Quick `animate()` for DOM Elements

Animate DOM elements directly using hardware-accelerated WAAPI:

```javascript
import { animate, spring } from 'motion';

// Basic element animation
animate(
  '.card',
  { opacity: [0, 1], y: [20, 0] },
  { duration: 0.6, easing: 'ease-out' }
);

// Spring physics on DOM
animate(
  '#button',
  { transform: 'scale(1.1)' },
  { easing: spring({ stiffness: 300, damping: 20 }) }
);
```

---

## 2. Scroll-Linked and Scroll-Triggered Animations

```javascript
import { scroll, inView, animate } from 'motion';

// 1. Scroll-linked progress bar
scroll(animate('#progress-bar', { scaleX: [0, 1] }), {
  target: document.body,
  offset: ['start start', 'end end'],
});

// 2. InView reveal (fires when element enters viewport)
inView('.reveal-item', ({ target }) => {
  animate(
    target,
    { opacity: [0, 1], transform: ['translateY(24px)', 'none'] },
    { duration: 0.5, easing: 'ease-out' }
  );

  // Return unobserve cleanup or exit callback
  return () => {
    animate(target, { opacity: 0 });
  };
});
```

---

## 3. Timeline Sequencing

```javascript
import { timeline } from 'motion';

const sequence = [
  ['#header', { opacity: [0, 1], y: [-20, 0] }, { duration: 0.4 }],
  ['.hero-text', { opacity: [0, 1], y: [20, 0] }, { duration: 0.5, at: '-0.2' }],
  ['.cta-button', { scale: [0.8, 1], opacity: [0, 1] }, { duration: 0.3, at: '<' }],
];

const controls = timeline(sequence, {
  defaultOptions: { easing: 'ease-out' },
});
```
