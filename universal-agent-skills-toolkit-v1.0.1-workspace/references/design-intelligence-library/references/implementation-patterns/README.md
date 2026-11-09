# Panduan Pola Implementasi Komponen Bersih

Dokumen ini memuat standar arsitektur dan pola penulisan kode komponen di dalam ekosistem AGY untuk menjaga keterbacaan, modularitas, dan kemudahan pemeliharaan (*clean & maintainable code*).

---

## 1. Prinsip Desain Modular (Single Responsibility)

1. **Pemisahan Logika & Presentasi**:
   - Komponen visual murni (kartu, badge, tombol) tidak boleh dibebani logika bisnis atau query data langsung.
   - Komponen kontainer bertindak sebagai pengambil data dan penyedia state, lalu mengalirkannya ke komponen presentasi via props atau variabel Blade.
2. **Komposisi daripada Pewarisan (Composition over Inheritance)**:
   - Gunakan pola *slots* pada Blade (`{{ $slot }}`, `{{ $header }}`) atau `children` pada React untuk menyusun kartu yang fleksibel tanpa membuat puluhan varian komponen yang kaku.

---

## 2. Pola Arsitektur Komponen Bersih

### Pola Kartu Komposisi (Blade)
```html
<!-- resources/views/components/card.blade.php -->
@props([
    'variant' => 'default',
    'interactive' => false
])

@php
$baseClasses = 'relative rounded-2xl border p-6 transition-all duration-300';
$variantClasses = match($variant) {
    'glow' => 'border-neutral-800 bg-neutral-950/80 backdrop-blur-md hover:border-neutral-700 hover:shadow-2xl hover:shadow-emerald-500/5',
    'muted' => 'border-neutral-800/60 bg-neutral-900/40',
    default => 'border-neutral-800 bg-neutral-900'
};
$interactiveClasses = $interactive ? 'cursor-pointer hover:-translate-y-1' : '';
@endphp

<div {{ $attributes->merge(['class' => "$baseClasses $variantClasses $interactiveClasses"]) }}>
    @if(isset($header))
        <div class="mb-4 flex items-center justify-between border-b border-neutral-800 pb-3">
            {{ $header }}
        </div>
    @endif

    <div class="card-body">
        {{ $slot }}
    </div>

    @if(isset($footer))
        <div class="mt-4 pt-3 border-t border-neutral-800 flex items-center justify-between">
            {{ $footer }}
        </div>
    @endif
</div>
```

---

## 3. Penataan State & Interaktivitas Ringan

1. **Gunakan Atribut Data Semantik**:
   - Gunakan `data-state="open|closed"` atau `data-active="true|false"` untuk mengendalikan styling via Tailwind (`data-[state=open]:block`).
2. **Hindari Inline Script di dalam Perulangan Loop**:
   - Pasang event listener secara terpusat (*event delegation*) pada elemen induk daripada menempelkan `onclick="..."` pada setiap baris tabel atau item kartu.
3. **Pembersihan Event Listener (Cleanup)**:
   - Setiap kali memasang event listener pada window/document (seperti resize atau keyboard shortcut `Escape`), pastikan ada fungsi pembersih (*cleanup listener*) saat komponen dilepas.
