# Accessibility & Performance Best Practices

Patterns verified against Motion v14.5.0 (`packages/framer-motion`).

---

## 1. Respecting Reduced Motion Preferences

Always respect the user's `prefers-reduced-motion` operating system setting to avoid causing vestibular discomfort or nausea.

### Using `useReducedMotion`:
```tsx
import { motion, useReducedMotion } from 'framer-motion';

export const AccessibleNotification = () => {
  const shouldReduceMotion = useReducedMotion();

  return (
    <motion.div
      initial={{ opacity: 0, y: shouldReduceMotion ? 0 : 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: shouldReduceMotion ? 0 : -20 }}
      transition={{ duration: shouldReduceMotion ? 0.1 : 0.4 }}
      className="alert alert-info"
    >
      Important alert message
    </motion.div>
  );
};
```

### Global Configuration with `MotionConfig`:
```tsx
import { MotionConfig } from 'framer-motion';

export const App = ({ children }: { children: React.ReactNode }) => (
  <MotionConfig reducedMotion="user">
    {children}
  </MotionConfig>
);
```

---

## 2. Bundle Optimization: `LazyMotion` & `domAnimation`

By default, importing `motion` from `framer-motion` bundles all features (~30 KB gzip). Use `LazyMotion` and `m` components to reduce bundle impact down to under ~5 KB:

```tsx
import { LazyMotion, domAnimation, m } from 'framer-motion';

export const OptimizedApp = () => (
  <LazyMotion features={domAnimation}>
    <m.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      className="p-4"
    >
      Lightweight animation without drag or layout overhead
    </m.div>
  </LazyMotion>
);
```

---

## 3. Hardware Acceleration & Performance Tips

1. **Animate Transform and Opacity Only:** Avoid animating layout-triggering properties (`width`, `height`, `top`, `left`, `margin`, `padding`) unless using the `layout` prop. Stick to `x`, `y`, `scale`, `rotate`, and `opacity`.
2. **`useWillChange`:** Use Framer Motion's built-in `useWillChange()` hook on heavy animated items to hint the browser compositor:
   ```tsx
   import { motion, useWillChange } from 'framer-motion';

   export const HeavyCard = () => {
     const willChange = useWillChange();
     return <motion.div style={{ willChange }} whileHover={{ scale: 1.05 }} />;
   };
   ```
3. **Avoid AnimatePresence Memory Leaks:** Always provide unique, stable `key` props to direct children of `<AnimatePresence>`. Never use array indices as keys when items can be filtered or reordered.
