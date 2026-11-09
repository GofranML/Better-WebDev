# Security Policy & Safe Execution Governance

Dokumen ini menetapkan standar keamanan, privasi data, dan tata kelola eksekusi perintah di dalam ekosistem `Universal-Agent-Skills-Toolkit`.

---

## 1. Zero Credential Exposure (Nol Kredensial Pribadi)

1. **Dilarang Menyertakan Kunci Rahasia**: Berkas paket tidak boleh memuat API key, password, personal access token (PAT), atau cookie sesi.
2. **Sanitasi Kunci Pihak Ketiga**: Jika sebuah tutorial atau contoh referensi memerlukan kunci (seperti fal.ai atau OpenAI API), gunakan placeholder aman:
   ```env
   FAL_KEY=your_fal_api_key_here
   OPENAI_API_KEY=your_openai_api_key_here
   ```
3. **Penyimpanan Variabel Lingkungan**: Semua rahasia wajib dimuat melalui berkas `.env` yang terdaftar pada `.gitignore`, bukan di dalam berkas skill atau repositori.

---

## 2. Sanitasi Jalur Berkas (Path Sanitization)

1. **Bebas dari Jalur Mesin Lokal**: Paket distribusi tidak boleh menggunakan jalur berkas absolut lokal (seperti `C:\Users\username\...` atau `D:\...`).
2. **Relative Paths**: Seluruh rujukan referensi, skrip kit, dan sub-dokumen harus menggunakan relative path berbasis root paket (`./references/...`, `../references/...`, `./tools/...`).

---

## 3. Tata Kelola Perintah Terminal & Eksekusi Skrip

1. **Mode Terisolasi (Sandbox First)**: Selalu utamakan menjalankan perintah di dalam lingkungan sandbox yang aman sebelum meminta hak akses elevasi.
2. **Nol Skrip Merusak**: Dilarang menyertakan perintah shell yang menghapus direktori di luar workspace proyek (`rm -rf /`, `Remove-Item C:\ -Recurse`).
3. **Audit Perintah Eksternal**: Skrip bantuan yang disertakan (seperti `lathe.mjs`, `audit-toolkit-health.mjs`) beroperasi secara *read-only* atau membatasi pembuatan file hanya di dalam direktori kerja aktif.

---

## 4. Bebas Iklan & Nol Watermark AI

1. **Sanitasi Antarmuka**: Tidak boleh ada elemen markup visual yang disuntikkan secara tersembunyi (*hidden backlink*, banner promosi, atau teks buatan AI yang dipaksakan).
2. **Kepatuhan Lisensi**: Hak cipta pembuat asli pada header file kode sumber wajib dipertahankan sesuai hukum internasional.
