# Installation Workflow & Verification Protocol

Dokumen ini menjelaskan alur instalasi standar dan protokol pengujian bertahap untuk memasang komponen dari paket `Universal-Agent-Skills-Toolkit` ke dalam lingkungan agen AI mana pun.

---

## 1. Alur Kerja 4 Tahap Instalasi

```text
[Ekstraksi File ZIP]
        │
        ▼
[Tahap 1: Verifikasi Integritas Toolkit]
└── Jalankan: node tools/utilities/audit-toolkit-health.mjs
        │
        ▼
[Tahap 2: Audit Duplikasi Host Agent]
└── Periksa direktori skills lokal agen Anda terhadap MANIFEST.json
        │
        ▼
[Tahap 3: Penyalinan Selektif (Selective Link / Copy)]
└── Salin hanya skill atau referensi yang berstatus NOT_INSTALLED
        │
        ▼
[Tahap 4: Verifikasi Penemuan Keterampilan (Skill Discovery Check)]
└── Pastikan agen dapat mengenali metadata frontmatter YAML skill
```

---

## 2. Pilihan Metode Integrasi

### Opsi A: Symbolic Link (Direkomendasikan untuk Hemat Ruang)
Jika sistem operasi mendukung symlink (atau junction di Windows):
Tautkan folder skill dari toolkit langsung ke folder skills agen Anda:
```bash
# Contoh Linux/macOS
ln -s /path/to/Universal-Agent-Skills-Toolkit/custom-skills/master-design-intelligence ~/.gemini/config/skills/master-design-intelligence

# Contoh Windows (PowerShell Administrator atau Developer Mode)
New-Item -ItemType SymbolicLink -Path "$HOME\.gemini\config\skills\master-design-intelligence" -Target "C:\path\to\Universal-Agent-Skills-Toolkit\custom-skills\master-design-intelligence"
```

### Opsi B: Direct Copy (Mandiri & Terisolasi Penuh)
Salin berkas folder skill secara fisik ke direktori skills agen Anda.
Metode ini memastikan bahwa lingkungan agen tetap dapat beroperasi meskipun direktori unduhan toolkit dipindahkan atau dihapus.

---

## 3. Protokol Verifikasi Penemuan Keterampilan (Discovery Test)

Setelah instalasi selesai, verifikasi bahwa host agent Anda dapat mendeteksi skill dengan mengajukan prompt uji:

1. **Uji Penemuan**:
   *"Tampilkan daftar skills yang saat ini aktif di sistem Anda."*
   Pastikan skill baru tercantum pada daftar output.
2. **Uji Inferensi**:
   *"Bagaimana strategi animasi yang disarankan untuk tombol hover menurut master-design-intelligence?"*
   Verifikasi bahwa agen merujuk ke prinsip beban minimal (CSS Transition murni, tanpa JavaScript).
