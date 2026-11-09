# Duplicate Detection & Anti-Collision Policy

Dokumen ini menjelaskan kebijakan resmi pendeteksian duplikasi, resolusi benturan nama (*namespace collisions*), dan konsolidasi komponen serbaguna.

---

## 1. Aturan Baku: Nol Instalasi Ulang

Jika sebuah komponen telah ditemukan terpasang pada lingkungan agen:
- **Dilarang memasang ulang** hanya untuk memperbarui versi minor, kecuali ditemukan bug kritis yang memblokir pekerjaan.
- **Dilarang membuat salinan ganda** dengan nama berbeda (misalnya membuat `master-design-intelligence-v2` berdampingan dengan `master-design-intelligence`).

---

## 2. Tabel Resolusi Duplikasi yang Ditemukan pada Audit

| Komponen | Lokasi Duplikat Awal | Tindakan Konsolidasi Toolkit | Alasan |
|---|---|---|---|
| **`codex-ppt`** | `.gemini\config\skills\` & `.agents\skills\` | Disatukan ke `skills/third-party/codex-ppt` | Isi berkas `SKILL.md` terbukti 100% identik |
| **`reverse-engineer-anything`** | `.gemini\config\skills\` & `.agents\skills\` | Disatukan ke `skills/third-party/reverse-engineer-anything` | Isi berkas `SKILL.md` dan referensi 100% identik |
| **`anatomy`** | `.gemini\config\skills\anatomy` | Dikemas lengkap beserta kit utilitas di `custom-skills/anatomy` | Menjamin ketersediaan `lathe.mjs`, `tube.mjs`, dan `audit.mjs` |
| **`motion` & `framer-motion`** | Monorepo `tools/motion` & skill `framer-motion` | Dipisahkan jelas: referensi di `tools/animation/motion` & skill di `custom-skills/framer-motion` | Mencegah pembengkakan ukuran paket |

---

## 3. Langkah Deteksi Mandiri oleh Agen Penerima

Sebelum melakukan penyalinan, agen penerima wajib mengecek keberadaan skill melalui pencarian nama folder:
```powershell
# Deteksi duplikat via PowerShell
Get-ChildItem -Path "$HOME\.gemini\config\skills", "$HOME\.claude\skills" -Filter "*<nama-skill>*" -ErrorAction SilentlyContinue
```
Jika perintah di atas mengembalikan hasil, tandai status sebagai `ALREADY_INSTALLED` dan lewati langkah penyalinan.
