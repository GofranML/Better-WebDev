# Contoh Proyek: Setup Agen AI Bebas Polusi & Bebas Duplikasi

Contoh ini menunjukkan bagaimana sebuah AI Coding Agent baru melakukan setup awal saat menerima direktori proyek yang dibekali toolkit ini.

---

## 1. Langkah Inisialisasi Agen

Ketika agen membuka proyek yang memuat `Universal-Agent-Skills-Toolkit`:

1. **Baca Instruksi Utama**:
   Agen membaca [`instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md`](../../instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md).
2. **Jalankan Audit Lingkungan Lokal**:
   Agen memeriksa apakah ada skill yang sudah terpasang di sistem pengguna dengan mencocokkan nama direktori di `~/.gemini/config/skills` atau `~/.claude/skills`.
3. **Penyalinan Terseleksi**:
   - Jika `master-design-intelligence` belum ada di host agent, salin dari `custom-skills/master-design-intelligence`.
   - Jika `impeccable` sudah terpasang, lewati penyalinan.
4. **Verifikasi Jalur Relatif**:
   Pastikan agen mengakses pustaka referensi melalui `./references/design-intelligence-library/` tanpa mencari path absolut mesin developer lama.

Dengan prosedur ini, host agen pengguna tetap bersih, rapi, dan tidak mengalami penumpukan berkas ganda.
