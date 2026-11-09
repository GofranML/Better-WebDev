# License Audit & Clean Governance Review

Dokumen ini mencatat evaluasi hukum lisensi, kepatuhan hak kekayaan intelektual, dan penegakan kebijakan output bersih (*clean code policy*) pada seluruh komponen `Universal-Agent-Skills-Toolkit`.

---

## 1. Evaluasi Lisensi Hukum

### A. Lisensi Permisif Terbuka (MIT / Apache-2.0 / ISC)
- **Komponen**: `daisyui`, `lucide-icons`, `impeccable`, `superpowers`, `ponytail`, `anatomy`, `taste-skill`, `avoid-ai-writing`, `humanizer`, `no-ai-slop`, `stop-slop`, `playwright-mcp`, `desktop-touch-mcp`.
- **Status Hukum**: **PASS (Diizinkan Bebas)**.
- **Kewajiban**: Mempertahankan copyright notice dan teks lisensi asli di dalam header berkas. Toolkit telah mempertahankan 100% berkas `LICENSE` asli.

### B. Lisensi Khusus: GreenSock (GSAP)
- **Komponen**: `gsap-motion-specialist`.
- **Status Hukum**: **PASS (Proyek Web Komersial Standar Bebas Royalti)**.
- **Ketentuan Khusus**: Bebas biaya untuk situs web komersial standar. Lisensi berbayar (*Club GreenSock*) hanya diperlukan jika membebankan biaya lisensi kepada banyak pengguna akhir (seperti platform SaaS website builder).

### C. Lisensi Copyleft Kuat: REA (AGPL-3.0)
- **Komponen**: `reverse-engineer-anything` (REA).
- **Status Hukum**: **PASS dengan Catatan**.
- **Ketentuan**: Jika memodifikasi kode engine REA itu sendiri dan menjalankannya melalui jaringan, perubahan harus dipublikasikan di bawah lisensi AGPL-3.0. Menggunakan REA sebagai alat analisa eksternal tidak mengontaminasi kode proyek pengguna.

---

## 2. Penegakan Kebijakan Anti-Watermark & Clean DOM

| Platform / Vendor | Status Audit | Kebijakan yang Ditegakkan |
|---|:---:|---|
| **Spline Free Tier** | **FAIL** | Menyuntikkan logo wajib *"Built with Spline"*. Dilarang keras melakukan manipulasi CSS display:none. Alihkan 100% ke Three.js lokal di `custom-skills/dioramas-web-design`. |
| **Framer Free Web Hosting** | **FAIL** | Menyuntikkan badge wajib *"Made in Framer"*. Alihkan kebutuhan animasi ke engine Motion lokal murni di `custom-skills/framer-motion`. |
| **Animate UI** | **CONDITIONAL** | Berlisensi MIT + Commons Clause. Diizinkan untuk proyek web klien atau internal; dilarang menjual kembali sebagai UI kit mandiri. |
