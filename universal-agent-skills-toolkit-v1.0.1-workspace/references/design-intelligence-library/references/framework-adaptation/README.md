# Panduan Langkah-demi-Langkah Konversi React JSX ke Laravel Blade Native

Dokumen ini merupakan panduan praktis operasional bagi agent AGY untuk mengonversi komponen antarmuka modern yang ditulis dalam React/Next.js menjadi komponen Blade native yang bersih, efisien, dan ramah Tailwind.

---

## 1. Tabel Konversi Sintaks Langsung

| Pola React (JSX / TSX) | Pola Setara Laravel Blade | Catatan Teknis |
|---|---|---|
| `<div className="p-4">` | `<div class="p-4">` | Ubah `className` ke atribut HTML standar `class`. |
| `<img src={item.url} alt={item.title} />` | `<img src="{{ $item->url }}" alt="{{ $item->title }}" />` | Ganti kurung kurawal JSX dengan tag echo Blade `{{ ... }}`. |
| `{items.map(item => <Card key={item.id} ... />)}` | `@foreach($items as $item) <x-card ... /> @endforeach` | Ganti ekspresi array map dengan direktif `@foreach`. |
| `{isOpen && <Modal />}` | `@if($isOpen) <x-modal /> @endif` | Ganti short-circuit conditional dengan direktif `@if`. |
| `{status === 'active' ? <BadgeActive /> : <BadgeMuted />}` | `@if($status === 'active') ... @else ... @endif` | Gunakan percabangan Blade yang mudah dibaca. |
| `dangerouslySetInnerHTML={{ __html: content }}` | `{!! $content !!}` | Gunakan unescaped echo Blade dengan sanitasi XSS yang ketat. |
| `<button onClick={handleClick}>` | `<button type="button" @click="handleClick">` | Pasang Alpine.js event listener atau selektor kelas Vanilla JS. |

---

## 2. Studi Kasus Konversi Lengkap: Modal Lightbox Interaktif

### Kode Asal: React / Framer Motion
```tsx
// React Component
import { useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';

export function PreviewModal({ image, title, onClose }) {
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/80">
      <motion.div 
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        exit={{ opacity: 0, scale: 0.95 }}
        className="relative max-w-4xl rounded-2xl bg-neutral-900 p-6"
      >
        <button onClick={onClose} className="absolute top-4 right-4 text-white">Tutup</button>
        <img src={image} alt={title} className="rounded-xl w-full" />
        <h3 className="mt-4 text-xl font-bold text-white">{title}</h3>
      </motion.div>
    </div>
  );
}
```

### Hasil Konversi Bersih: Laravel Blade Native + Alpine.js
```html
<!-- resources/views/components/preview-modal.blade.php -->
@props(['image', 'title'])

<div 
    x-data="{ open: false }" 
    x-show="open" 
    x-cloak
    @keydown.escape.window="open = false"
    class="fixed inset-0 z-50 flex items-center justify-center bg-black/80 backdrop-blur-sm p-4"
    role="dialog"
    aria-modal="true"
    aria-labelledby="modalTitle"
>
    <!-- Backdrop Click Listener -->
    <div class="fixed inset-0" @click="open = false" aria-hidden="true"></div>

    <!-- Modal Box dengan Transisi Tailwind Terakselerasi Hardware -->
    <div 
        x-show="open"
        x-transition:enter="transition ease-out duration-300"
        x-transition:enter-start="opacity-0 scale-95"
        x-transition:enter-end="opacity-100 scale-100"
        x-transition:leave="transition ease-in duration-200"
        x-transition:leave-start="opacity-100 scale-100"
        x-transition:leave-end="opacity-0 scale-95"
        class="relative z-10 w-full max-w-4xl rounded-2xl border border-neutral-800 bg-neutral-900 p-6 shadow-2xl"
    >
        <button 
            type="button" 
            @click="open = false" 
            class="absolute top-4 right-4 rounded-lg bg-neutral-800 p-2 text-neutral-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-emerald-400"
            aria-label="Tutup jendela pratinjau"
        >
            <svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
            </svg>
        </button>

        <img src="{{ $image }}" alt="{{ $title }}" class="w-full rounded-xl object-contain max-h-[70vh]">
        <h3 id="modalTitle" class="mt-4 text-xl font-bold text-white">{{ $title }}</h3>
    </div>
</div>
```

---

## 3. Checklist Verifikasi Pasca-Konversi
- [ ] Atribut `className` sudah 100% berganti menjadi `class`.
- [ ] Tidak ada penulisan syntax JSX camelCase tersisa pada elemen HTML standar.
- [ ] Tidak ada sisa kode `import React from 'react'` atau hook React.
- [ ] Tombol interaktif memiliki `type="button"` eksplisit untuk mencegah form submit yang tidak diinginkan.
- [ ] Elemen dialog modal memiliki navigasi penutupan via tombol keyboard `Escape`.
- [ ] Seluruh string teks bebas dari tanda strip panjang atau em dash.
