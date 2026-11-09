# Register Lisensi Hukum & Batasan Komersial

Dokumen ini mencatat seluruh status lisensi, hak cipta, dan batasan komersial dari 10 target sumber eksternal sesuai ketentuan Bagian 16.C (License and Attribution Exception).

---

## 1. Register Lisensi 10 Sumber Utama

| No | Target Sumber | Lisensi Resmi | Penggunaan Komersial | Kewajiban Header Lisensi Kode Sumber | Kewajiban Atribusi Visual di UI | Batasan Khusus / Larangan Hukum |
|---|---|---|:---:|:---:|:---:|---|
| **1** | **VengeanceUI** | MIT License | Diizinkan Bebas | **Wajib** sertakan lisensi MIT di header file | **Tidak Ada** | Tidak boleh menghapus copyright notice di file sumber. |
| **2** | **Animate UI** | MIT + Commons Clause | Diizinkan untuk Proyek Web Klien / Pribadi | **Wajib** sertakan teks Commons Clause di file | **Tidak Ada** | **Dilarang** menjual kembali komponen sebagai paket UI kit komersial saingan. |
| **3** | **Uiverse Galaxy** | MIT / CC0 (Variatif per elemen) | Diizinkan | Disarankan pertahankan komentar pembuat asli pada CSS | **Tidak Ada** | Elemen buatan komunitas; pastikan tidak melanggar hak cipta pihak ketiga. |
| **4** | **ForgeUI** | MIT License | Diizinkan Bebas | **Wajib** sertakan lisensi MIT di file sumber | **Tidak Ada** | Modul pihak ketiga tertentu (seperti Tiptap Cloud) memerlukan akun terpisah jika dipakai. |
| **5** | **Uilora** | Proprietary SaaS / Free Tier | Terbatas pada ketentuan ToS | Memerlukan kepatuhan syarat layanan registry | **Kondisional** (Periksa template) | Dilarang mengambil komponen dari area berbayar tanpa lisensi sah. |
| **6** | **Shaders** | MIT License | Diizinkan Bebas | **Wajib** sertakan lisensi MIT di file shader | **Tidak Ada** | Kode shader WebGPU/WGSL bebas digunakan di aplikasi komersial. |
| **7** | **Spline** | Proprietary SaaS | Terbatas pada paket langganan | Mengacu pada ToS Spline | **Wajib pada Free Tier** (*"Built with Spline"*) | Free Tier menyuntikkan logo wajib. Dilarang mem-bypass watermark via CSS hack. |
| **8** | **Framer** | Proprietary SaaS (Web) / MIT (`motion`) | SaaS: Terikat langganan; `motion`: Bebas | `motion`: Wajib lisensi MIT di kode sumber | **Wajib pada Free Web Hosting** (*"Made in Framer"*) | Hosting gratis menyematkan badge wajib. Engine `motion` lokal murni bebas atribusi UI. |
| **9** | **Bklit UI** | MIT License (Komponen) | Diizinkan Bebas | **Wajib** sertakan lisensi MIT di file sumber | **Tidak Ada** | Komponen chart berbasis shadcn bebas royalti. Studio Bklit bersifat proprietary. |
| **10**| **GSAP** | Standard GreenSock License | Bebas Biaya untuk Mayoritas Proyek | **Wajib** pertahankan header lisensi GreenSock di file | **Tidak Ada** | Bebas biaya untuk proyek web komersial standar. Lisensi berbayar (*Club GreenSock*) hanya jika membebankan biaya lisensi ke banyak pengguna akhir (SaaS/Builder komersial). |

---

## 2. Pembedaan Kewajiban Hukum vs Branding Promosi

Kebijakan hukum AGY membedakan dengan tegas antara dua hal:
1. **Header Lisensi Hukum yang Sah (WAJIB DIPERTAHANKAN)**:
   - Komentar hak cipta di baris atas berkas kode (contoh: `/* Copyright (c) 2026 ... MIT License */`).
   - Berkas `LICENSE` di tingkat repositori.
   - Ketentuan ini **tidak boleh dihapus** demi mematuhi hukum hak cipta internasional.
2. **Branding Promosi, Watermark, & Iklan (WAJIB DITOLAK)**:
   - Badge visual *"Built with AI"*, *"Made with Spline"*, *"Hosted on Framer"*.
   - Injeksi tautan promosi tersembunyi ke dalam kode markup antarmuka pengguna.
   - Ketentuan ini **wajib dibersihkan** atau sumbernya diklasifikasikan sebagai **FAIL** untuk integrasi produksi bersih.

---

## 3. Protokol Penanganan Sumber dengan Watermark Wajib

Jika sebuah platform mewajibkan penayangan logo/watermark di antarmuka publik dan tidak menyediakan opsi resmi untuk menonaktifkannya pada tingkat gratis (seperti Spline Free Tier dan Framer Web Hosting gratis):
- **Dilarang keras** melakukan pembobolan teknis (CSS `display: none !important`, manipulasi z-index, atau DOM removal).
- **Tindakan yang Benar**: Klasifikasikan sumber sebagai **FAIL** untuk build produksi bersih, dan alihkan implementasi ke alternatif open-source murni yang setara (misalnya Three.js lokal via `tools/dioramas`).
