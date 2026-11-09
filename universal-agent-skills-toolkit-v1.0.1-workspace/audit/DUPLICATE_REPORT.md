# Duplicate Report & Conflict Resolution

Dokumen ini mencatat audit mendalam terhadap duplikasi berkas fisik, overlap fungsional, dan benturan dependensi yang ditemukan selama proses audit, serta langkah resolusi yang telah diterapkan pada toolkit.

---

## 1. Duplikasi Berkas Fisik (Exact File Duplicates)

### A. Kasus 1: `codex-ppt`
- **Temuan**: File `SKILL.md` ditemukan berada di dua lokasi berbeda:
  - `C:\Users\epann\.gemini\config\skills\codex-ppt\SKILL.md`
  - `C:\Users\epann\.agents\skills\codex-ppt\SKILL.md`
- **Uji Perbandingan (Compare-Object)**: Hasil perbandingan hash isi berkas adalah 100% identik tanpa perbedaan karakter.
- **Resolusi Toolkit**: Dikonsolidasikan menjadi satu salinan kanonikal di `skills/third-party/codex-ppt/`.

### B. Kasus 2: `reverse-engineer-anything`
- **Temuan**: File `SKILL.md` dan folder `references/` ditemukan berada di:
  - `C:\Users\epann\.gemini\config\skills\reverse-engineer-anything\`
  - `C:\Users\epann\.agents\skills\reverse-engineer-anything\`
- **Uji Perbandingan**: Kedua salinan identik.
- **Resolusi Toolkit**: Dikonsolidasikan menjadi satu salinan kanonikal di `skills/third-party/reverse-engineer-anything/`.

---

## 2. Resolusi Overlap Fungsional

### A. Kluster Penulisan & Anti-Slop (5 Keterampilan)
- **Tantangan**: Terdapat 5 alat (`humanizer`, `avoid-ai-writing`, `no-ai-slop`, `stop-slop`, `antislop`) yang jika dijalankan secara bersamaan dapat menyebabkan teks ditulis ulang berkali-kali (*rewriting loops*) hingga kehilangan makna aslinya.
- **Resolusi**: Ditetapkan aturan ortogonal pada `instructions/SKILL_SELECTION_GUIDE.md`:
  - Gunakan `humanizer` untuk penulisan ulang natural berbasis panduan Wikipedia.
  - Gunakan `avoid-ai-writing` khusus untuk audit korpus/kode sumber.
  - Gunakan `no-ai-slop` untuk penajaman ringkas.
  - Gunakan `antislop` untuk tata kelola komentar kode dan aturan tata letak UI.

### B. Kluster Desain Antarmuka (3 Keterampilan)
- **Resolusi**: Alur kerja estafet 3 tahap:
  - `design-taste-frontend`: Penentuan estetika & visual direction awal.
  - `master-design-intelligence`: Pengambilan keputusan komponen, framework, dan tata kelola kode bersih.
  - `impeccable`: Audit detail dan pemolesan craft antarmuka.
