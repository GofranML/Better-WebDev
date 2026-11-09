# Universal Portability & Cross-Platform Adaptation Guide

Dokumen ini menjelaskan strategi teknis agar keterampilan dan alat di dalam paket `Universal-Agent-Skills-Toolkit` dapat berjalan mulus pada berbagai sistem operasi (Windows, macOS, Linux) dan berbagai arsitektur AI agent.

---

## 1. Arsitektur Jalur Relatif (Relative Path Architecture)

Di lingkungan lokal aslinya, skill seperti `master-design-intelligence` mengandalkan absolute path Windows (`D:\AI\design-intelligence-library`). Pada paket distribusi portabel ini, arsitektur diubah menjadi modular hierarkis:

```text
Root Toolkit: [Universal-Agent-Skills-Toolkit]
  │
  ├── custom-skills/
  │     └── master-design-intelligence/
  │           └── SKILL.md  ──(merujuk secara relatif)──► ../../references/design-intelligence-library/
  │
  └── references/
        └── design-intelligence-library/
              ├── DESIGN-INDEX.md
              └── DESIGN-SELECTION-RULES.md
```

### Aturan Resolusi Rujukan:
- Saat skill dipasang mandiri di luar direktori paket, agen dapat menaruh folder `references/` berdampingan dengan folder `skills/`, atau menggunakan environment variable `TOOLKIT_REF_DIR` jika didukung.

---

## 2. Portabilitas Lintas Sistem Operasi (Windows, macOS, Linux)

1. **Pemisah Jalur (Path Separators)**:
   - Gunakan garis miring forward slash (`/`) dalam seluruh dokumen Markdown dan tautan skema `file:///`.
   - Forward slash didukung secara universal oleh Node.js, Python, Linux, macOS, dan PowerShell modern di Windows.
2. **Pengeksekusi Skrip (Script Execution)**:
   - Skrip bantuan ditulis dalam format standar ECMAScript Modules (`.mjs`) murni agar dapat dieksekusi langsung oleh Node.js tanpa dependensi build tools tambahan:
     ```bash
     node tools/utilities/audit-toolkit-health.mjs
     ```
3. **Eksekusi MCP Lintas Platform**:
   - Menghindari ketergantungan wrapper `cmd.exe /c` pada sistem operasi Unix/macOS. Pada Unix/macOS, perintah MCP langsung memanggil biner `npx`.

---

## 3. Kompatibilitas Frontmatter Skill

Semua berkas `SKILL.md` menggunakan frontmatter YAML standar:
```yaml
---
name: nama-skill
description: Deskripsi fungsi skill yang jelas, padat, dan mencantumkan kata kunci pemicu.
---
```
Format ini didukung secara *out-of-the-box* oleh Google Antigravity, Claude Code, Gemini CLI, Cursor AI, dan sebagian besar plugin framework agen modern.
