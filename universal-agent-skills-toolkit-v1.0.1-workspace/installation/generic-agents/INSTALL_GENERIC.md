# Panduan Instalasi Toolkit untuk Generic AI Coding Agents

Dokumen ini memandu integrasi keterampilan dan dokumen acuan ke dalam agen AI berbasis CLI, script runner, atau editor berkas generik (seperti Windsurf, Aider, OpenCode, Kimi CLI, Devv, dll).

---

## 1. Pendekatan Berbasis Berkas (File-Based Integration)

Mayoritas agen AI modern memindai berkas instruksi proyek saat pertama kali diluncurkan di dalam workspace. Format yang paling umum didukung adalah:
1. `AGENTS.md` di root proyek.
2. `CLAUDE.md` di root proyek.
3. Direktori instruksi lokal seperti `.agents/skills/` atau `.gemini/config/skills/`.

---

## 2. Langkah Cepat Integrasi (Quickstart 3 Langkah)

### Langkah 1: Pasang Instruksi Universal
Salin berkas instruksi master ke root repositori proyek Anda:
```bash
cp ./instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md /path/to/project/AGENTS.md
```

### Langkah 2: Salin Skill yang Diperlukan
Pilih hanya skill yang sesuai dengan domain proyek:
- Untuk proyek frontend Next.js/React:
  `custom-skills/master-design-intelligence`
  `custom-skills/framer-motion`
  `custom-skills/lucide-icons`
- Untuk proyek Laravel / PHP / Blade:
  `custom-skills/master-design-intelligence`
  `custom-skills/gsap-motion-specialist`
- Untuk pencegahan kode berantakan:
  `custom-skills/karpathy-guidelines`
  `skills/third-party/antislop`

### Langkah 3: Sediakan Pangkalan Pengetahuan Referensi
Salin direktori `references/design-intelligence-library` ke direktori proyek (`./docs/references/`).
Instruksikan agen Anda:
*"Sebelum mengimplementasikan komponen UI baru, selalu baca aturan seleksi pada docs/references/DESIGN-SELECTION-RULES.md"*
