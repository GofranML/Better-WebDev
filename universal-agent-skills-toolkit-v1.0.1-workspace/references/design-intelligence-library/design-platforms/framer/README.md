# Referensi Sumber: Framer (Evaluasi Platform & Isolasi Ekosistem)

---

## 1. Metadata Sumber
- **Nama Sumber**: Framer
- **Official URL**: https://www.framer.com
- **Framework**: Proprietary SaaS Web Builder & React Ecosystem
- **Kategori**: Design Platforms & Web Hosting
- **Tujuan Penggunaan**: Dokumentasi evaluasi batasan platform cloud Framer dan pemisahan arsitektur antara layanan web hosting komersial Framer dengan pustaka animasi mandiri lokal.
- **Tanggal Verifikasi Terakhir**: 2026-11-03

---

## 2. Alasan Evaluasi & Pengecualian Cloud Hosting
- **Audit Web Hosting Framer Gratis**:
  - Seluruh situs web yang diterbitkan melalui paket gratis Framer secara otomatis dan permanen menyematkan lencana mengambang *"Made in Framer"* di sudut layar.
  - Sesuai Kebijakan Bersih Bagian 16, penyertaan lencana promosi vendor secara paksa melanggar standar produksi bersih.
  - Oleh karena itu, opsi export/embed hosting gratis Framer berstatus **FAIL** untuk integrasi produksi bersih.
- **Pemisahan Ekosistem**:
  - Framer sebagai **platform hosting SaaS** bersifat proprietary dan membawa watermark.
  - Namun, engine animasi yang lahir dari ekosistem ini telah dipisahkan menjadi pustaka mandiri sumber terbuka bernama **`motion`**.
  - Pustaka mandiri tersebut telah tersedia secara lokal pada repositori [`../../tools/motion`](../../tools/motion) (100% MIT, bebas watermark, bebas telemetri).

---

## 3. Evaluasi Kebutuhan MCP Framer
- **Remote MCP Framer (`https://mcp.framer.com/mcp`)**:
  - *Fungsi*: Menghubungkan AI dengan workspace desain cloud Framer.
  - *Autentikasi*: Membutuhkan token OAuth / API Key akun Framer.
  - *Risiko Privasi*: Mengirimkan struktur dan konteks kode proyek ke server pihak ketiga.
  - *Keputusan Akhir*: **DITOLAK (REJECTED)**. AGY tidak memerlukan remote MCP Framer karena seluruh kebutuhan komponen dan animasi telah dipenuhi oleh pustaka lokal mandiri tanpa risiko privasi.

---

## 4. Analisis Lisensi & Komersial
- **Platform Cloud Framer**: Proprietary Terms of Service.
- **Pustaka Kode Mandiri (`motion`)**: MIT License.

---

## 5. Audit Kebersihan & Kepatuhan Branding
- **Klasifikasi Kepatuhan**:
  - **Framer Free Web Hosting / Embed**: **FAIL** (Watermark badge mandatory).
  - **Pustaka Mandiri `tools/motion`**: **PASS** (100% bersih).
- **Status Keseluruhan Platform**: **CONDITIONAL** (Hanya izinkan komponen jika dieksekusi via pustaka `motion` lokal).

---

## 6. Pemisahan Fakta, Asumsi & Rekomendasi
- **Fakta Terverifikasi**: Situs web buatan Framer pada paket gratis menyertakan badge *"Made in Framer"*, sedangkan pustaka `motion` di GitHub adalah repositori terpisah berlisensi MIT.
- **Asumsi**: Pengguna menginginkan antarmuka produksi yang mandiri tanpa keterikatan pada tagihan langganan cloud Framer.
- **Rekomendasi**: Jangan pernah mengintegrasikan iframe, embed, atau web hosting Framer ke dalam alur produksi; seluruh pola interaksi dinamis wajib dibangun menggunakan engine lokal `tools/motion` atau GSAP.

