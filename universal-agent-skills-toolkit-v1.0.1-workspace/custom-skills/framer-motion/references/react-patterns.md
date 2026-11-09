# Framer Motion React Patterns Reference

Patterns verified against Framer Motion v14.5.0 (`tools/motion/packages/framer-motion`).

---

## 1. Declarative Motion & Variants

Variants decouple animation definition from component structure and enable orchestrated child cascades.

```tsx
import { motion, Variants } from 'framer-motion';

const containerVariants: Variants = {
  hidden: { opacity: 0 },
  visible: {
    opacity: 1,
    transition: {
      staggerChildren: 0.1,
      delayChildren: 0.2,
    },
  },
};

const itemVariants: Variants = {
  hidden: { opacity: 0, y: 20 },
  visible: {
    opacity: 1,
    y: 0,
    transition: { type: 'spring', stiffness: 300, damping: 24 },
  },
};

export const CardList = ({ items }: { items: string[] }) => (
  <motion.ul
    variants={containerVariants}
    initial="hidden"
    animate="visible"
    className="space-y-3"
  >
    {items.map((item, index) => (
      <motion.li key={index} variants={itemVariants} className="p-4 bg-base-100 rounded-box shadow">
        {item}
      </motion.li>
    ))}
  </motion.ul>
);
```

---

## 2. AnimatePresence & Mount / Unmount Transitions

`AnimatePresence` animates components when they are removed from the React tree.

```tsx
import { motion, AnimatePresence } from 'framer-motion';

export const Modal = ({ isOpen, onClose }: { isOpen: boolean; onClose: () => void }) => (
  <AnimatePresence>
    {isOpen && (
      <div className="fixed inset-0 z-50 flex items-center justify-center">
        {/* Backdrop */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          onClick={onClose}
          className="fixed inset-0 bg-black/60 backdrop-blur-sm"
        />

        {/* Modal Dialog */}
        <motion.div
          initial={{ opacity: 0, scale: 0.95, y: 16 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 0.95, y: 16 }}
          transition={{ type: 'spring', damping: 25, stiffness: 350 }}
          className="relative z-10 p-6 bg-base-100 rounded-2xl shadow-xl max-w-md w-full"
        >
          <h3 className="text-lg font-bold">Dialog Title</h3>
          <p className="py-4">Modal content goes here.</p>
          <div className="modal-action">
            <button className="btn btn-primary" onClick={onClose}>Close</button>
          </div>
        </motion.div>
      </div>
    )}
  </AnimatePresence>
);
```

---

## 3. Layout Animations & Shared Element Transitions

Use `layout` to automatically animate size and position changes caused by CSS reflows, reordering, or state changes.

```tsx
import { useState } from 'react';
import { motion } from 'framer-motion';

const tabs = ['Home', 'Profile', 'Settings'];

export const TabBar = () => {
  const [activeTab, setActiveTab] = useState(tabs[0]);

  return (
    <div className="flex gap-2 p-1 bg-base-200 rounded-xl">
      {tabs.map((tab) => (
        <button
          key={tab}
          onClick={() => setActiveTab(tab)}
          className="relative px-4 py-2 text-sm font-medium transition-colors"
        >
          {activeTab === tab && (
            <motion.div
              layoutId="active-pill"
              className="absolute inset-0 bg-primary rounded-lg"
              transition={{ type: 'spring', stiffness: 500, damping: 35 }}
            />
          )}
          <span className={`relative z-10 ${activeTab === tab ? 'text-primary-content' : 'text-base-content'}`}>
            {tab}
          </span>
        </button>
      ))}
    </div>
  );
};
```

---

## 4. Gestures & Interactions

Framer Motion provides first-class gesture recognizers:

```tsx
import { motion } from 'framer-motion';

export const InteractiveButton = () => (
  <motion.button
    whileHover={{ scale: 1.03 }}
    whileTap={{ scale: 0.97 }}
    transition={{ type: 'spring', stiffness: 400, damping: 17 }}
    className="btn btn-primary"
  >
    Click Me
  </motion.button>
);
```

### Draggable Card with Constraints:
```tsx
import { motion, useMotionValue, useTransform } from 'framer-motion';

export const SwipeCard = () => {
  const x = useMotionValue(0);
  const opacity = useTransform(x, [-150, 0, 150], [0, 1, 0]);
  const rotate = useTransform(x, [-150, 0, 150], [-18, 0, 18]);

  return (
    <motion.div
      drag="x"
      dragConstraints={{ left: 0, right: 0 }}
      style={{ x, opacity, rotate }}
      className="w-72 h-44 bg-base-100 rounded-2xl shadow-lg flex items-center justify-center cursor-grab active:cursor-grabbing"
    >
      Swipe left or right
    </motion.div>
  );
};
```
