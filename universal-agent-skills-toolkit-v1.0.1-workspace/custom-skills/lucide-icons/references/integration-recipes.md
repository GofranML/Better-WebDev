# Lucide Icon Integration Recipes

This reference provides exact, copy-pasteable implementation patterns for incorporating Lucide SVG icons into various frontend templates without dependency bloat.

---

## 1. Lucide SVG Standards & Geometry

Every official Lucide SVG follows a strict 24×24 grid coordinate system:
```xml
<svg
  xmlns="http://www.w3.org/2000/svg"
  width="24"
  height="24"
  viewBox="0 0 24 24"
  fill="none"
  stroke="currentColor"
  stroke-width="2"
  stroke-linecap="round"
  stroke-linejoin="round"
>
  <!-- Path data -->
</svg>
```

### Essential Rules:
- **`fill="none"`**: Lucide icons are stroke-based. Do not set `fill="currentColor"` unless the icon is an explicitly filled shape (e.g. solid star).
- **`stroke="currentColor"`**: Allows the icon color to inherit seamlessly from the surrounding text/CSS color (e.g., `text-primary`, `text-gray-500`).
- **`stroke-width`**: Standard is `2`. Use `1.5` for delicate UI or `2.5` for bold affordances.
- **`viewBox="0 0 24 24"`**: Never alter or omit the viewBox.

---

## 2. Tailwind CSS & DaisyUI Recipes

### A. DaisyUI Button with Icon
```html
<!-- Leading icon in DaisyUI button -->
<button class="btn btn-primary gap-2">
  <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
    <path d="M5 12h14" />
    <path d="m12 5 7 7-7 7" />
  </svg>
  Continue
</button>

<!-- Icon-only button (accessible) -->
<button class="btn btn-ghost btn-circle" aria-label="Search">
  <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
  </svg>
</button>
```

### B. DaisyUI Input with Icon Adornment
```html
<label class="input input-bordered flex items-center gap-2">
  <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 opacity-70" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
  </svg>
  <input type="text" class="grow" placeholder="user@example.com" />
</label>
```

---

## 3. Laravel Blade Recipes

### A. Direct Inline Component (`resources/views/components/icon.blade.php`)
```php
@props([
    'name',
    'class' => 'w-5 h-5'
])

@php
    $path = resource_path("icons/{$name}.svg");
    $svg = file_exists($path) ? file_get_contents($path) : null;
@endphp

@if($svg)
    <span {{ $attributes->merge(['class' => "inline-flex items-center justify-center {$class}"]) }}>
        {!! $svg !!}
    </span>
@else
    <!-- Fallback if icon missing -->
    <span class="inline-block {{ $class }} bg-base-300 rounded"></span>
@endif
```

Usage in Blade:
```blade
<x-icon name="arrow-right" class="w-4 h-4 text-primary" />
```

---

## 4. React (JSX / TSX) Recipe

```tsx
import React from 'react';

interface IconProps extends React.SVGProps<SVGSVGElement> {
  size?: number;
  className?: string;
}

export const ArrowRightIcon: React.FC<IconProps> = ({
  size = 24,
  className = '',
  ...props
}) => (
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width={size}
    height={size}
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    strokeWidth={2}
    strokeLinecap="round"
    strokeLinejoin="round"
    className={className}
    aria-hidden="true"
    {...props}
  >
    <path d="M5 12h14" />
    <path d="m12 5 7 7-7 7" />
  </svg>
);
```

---

## 5. Accessibility Guidelines

1. **Decorative Icons:** If the icon is alongside descriptive text (e.g. `<button><svg .../> Delete</button>`), add `aria-hidden="true"`.
2. **Interactive / Standalone Icons:** If the icon represents an action without text, provide an `aria-label` on the parent button or interactive element:
   ```html
   <button aria-label="Close dialog">
     <svg aria-hidden="true" ...></svg>
   </button>
   ```
