# Panduan Instalasi Toolkit untuk OpenAI Codex & Custom GPT Agents

Dokumen ini memandu integrasi keterampilan dan panduan operasional dari toolkit ke model OpenAI Codex, CLI Codex, atau Custom GPT developer environments.

---

## 1. Lokasi Direktori & Format Integrasi

- **Project Prompt Directory**: `<project-root>/.codex/prompts/` atau `.agents/skills/`
- **System Instructions**: File `AGENTS.md` atau `SYSTEM_PROMPT.md` di root repositori.

---

## 2. Langkah Pemasangan

### A. Integrasi Instruksi Sistem Global
Salin berkas `instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md` ke dalam repositori target sebagai `AGENTS.md`:
```bash
cp ./instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md /path/to/project/AGENTS.md
```

### B. Memasang Keterampilan Pilihan
Salin keterampilan yang dibutuhkan ke direktori `.agents/skills/` di dalam proyek:
```bash
mkdir -p /path/to/project/.agents/skills
cp -r ./custom-skills/master-design-intelligence /path/to/project/.agents/skills/
cp -r ./custom-skills/gsap-motion-specialist /path/to/project/.agents/skills/
cp -r ./custom-skills/karpathy-guidelines /path/to/project/.agents/skills/
```

### C. Mendaftarkan Pustaka Referensi
Salin `references/design-intelligence-library` ke `.agents/references/design-intelligence-library/`.
Codex dapat membaca file markdown referensi ini secara langsung saat menganalisis kebutuhan antarmuka.
