# Installation Guide: Universal Agent Skills & Toolkit

Dokumen ini memandu pemasangan toolkit ke dalam berbagai host agent AI.

---

## 1. Quickstart: Instalasi Otomatis via AI Agent CLI (Direkomendasikan)

Pengguna tidak perlu lagi menyalin berkas secara manual. Anda dapat meminta AI Agent favorit Anda di terminal untuk melakukan ekstraksi dan konfigurasi secara mandiri:

1. Unduh `universal-agent-skills-toolkit-v1.0.1.zip` ke folder kerja Anda.
2. Buka terminal dan jalankan AI Agent Anda (`agy`, `claude`, `gemini`, dll.).
3. Berikan instruksi berikut kepada agen:
   > *"Tolong ekstrak file universal-agent-skills-toolkit-v1.0.1.zip di folder ini, baca petunjuk yang ada di dalam INSTALL.md dan instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md, lalu pasang dan integrasikan keterampilan (skills) serta instruksinya secara otomatis ke lingkungan agent ini tanpa membuat duplikasi."*

Agen akan secara otomatis mendeteksi platformnya, memeriksa dependensi dan duplikasi, lalu memasang skill yang relevan ke direktori sistem Anda.

---

## 2. Pemasangan Manual Berdasarkan Host Agent (Opsional)

Jika Anda ingin melakukan penataan berkas sendiri:

| Host Agent | Panduan Terperinci | Langkah Cepat |
|---|---|---|
| **Google Antigravity (AGY)** | [`installation/antigravity/INSTALL_AGY.md`](installation/antigravity/INSTALL_AGY.md) | Salin isi `custom-skills/` ke `~/.gemini/config/skills/` |
| **Claude Code** | [`installation/claude-code/INSTALL_CLAUDE.md`](installation/claude-code/INSTALL_CLAUDE.md) | Salin skill ke `~/.claude/skills/` |
| **OpenAI Codex** | [`installation/codex/INSTALL_CODEX.md`](installation/codex/INSTALL_CODEX.md) | Masukkan `UNIVERSAL_AGENT_INSTRUCTIONS.md` ke `AGENTS.md` |
| **Gemini CLI** | [`installation/gemini-cli/INSTALL_GEMINI.md`](installation/gemini-cli/INSTALL_GEMINI.md) | Salin skill ke `~/.gemini/config/skills/` |
| **Cursor AI** | [`installation/cursor/INSTALL_CURSOR.md`](installation/cursor/INSTALL_CURSOR.md) | Konversi skill terpilih ke `.cursor/rules/*.mdc` |
| **Generic File-Based Agents** | [`installation/generic-agents/INSTALL_GENERIC.md`](installation/generic-agents/INSTALL_GENERIC.md) | Salin `UNIVERSAL_AGENT_INSTRUCTIONS.md` ke root repositori |

---

## 3. Kebijakan Anti-Duplikasi

Sebelum menyalin folder keterampilan apa pun:
1. Periksa apakah skill dengan nama atau fungsi serupa sudah ada pada direktori host Anda.
2. Jika sudah ada, jangan menimpa atau menyalin ulang.
3. Rujuk panduan [`instructions/DUPLICATE_DETECTION.md`](instructions/DUPLICATE_DETECTION.md) untuk rincian klasifikasi.
