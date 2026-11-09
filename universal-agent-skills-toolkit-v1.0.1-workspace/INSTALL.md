# Installation Guide: Universal Agent Skills & Toolkit

Dokumen ini memandu pemasangan toolkit ke dalam berbagai host agent AI.

---

## 1. Quickstart Lintas Agen

### Langkah 1: Ekstrak Berkas Distribusi
Ekstrak file `universal-agent-skills-toolkit.zip` ke lokasi penyimpanan alat atau dokumen di komputer Anda (misalnya `~/tools/Universal-Agent-Skills-Toolkit` atau `C:\tools\Universal-Agent-Skills-Toolkit`).

### Langkah 2: Pilih Panduan Berdasarkan Agen Anda

| Host Agent | Panduan Terperinci | Langkah Cepat |
|---|---|---|
| **Google Antigravity (AGY)** | [`installation/antigravity/INSTALL_AGY.md`](installation/antigravity/INSTALL_AGY.md) | Salin isi `custom-skills/` ke `~/.gemini/config/skills/` |
| **Claude Code** | [`installation/claude-code/INSTALL_CLAUDE.md`](installation/claude-code/INSTALL_CLAUDE.md) | Salin skill ke `~/.claude/skills/` |
| **OpenAI Codex** | [`installation/codex/INSTALL_CODEX.md`](installation/codex/INSTALL_CODEX.md) | Masukkan `UNIVERSAL_AGENT_INSTRUCTIONS.md` ke `AGENTS.md` |
| **Gemini CLI** | [`installation/gemini-cli/INSTALL_GEMINI.md`](installation/gemini-cli/INSTALL_GEMINI.md) | Salin skill ke `~/.gemini/config/skills/` |
| **Cursor AI** | [`installation/cursor/INSTALL_CURSOR.md`](installation/cursor/INSTALL_CURSOR.md) | Konversi skill terpilih ke `.cursor/rules/*.mdc` |
| **Generic File-Based Agents** | [`installation/generic-agents/INSTALL_GENERIC.md`](installation/generic-agents/INSTALL_GENERIC.md) | Salin `UNIVERSAL_AGENT_INSTRUCTIONS.md` ke root repositori |

---

## 2. Kebijakan Anti-Duplikasi

Sebelum menyalin folder keterampilan apa pun:
1. Periksa apakah skill dengan nama atau fungsi serupa sudah ada pada direktori host Anda.
2. Jika sudah ada, jangan menimpa atau menyalin ulang.
3. Rujuk panduan [`instructions/DUPLICATE_DETECTION.md`](instructions/DUPLICATE_DETECTION.md) untuk rincian klasifikasi.
