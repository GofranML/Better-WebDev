# Panduan Instalasi Toolkit untuk Cursor AI

Dokumen ini memandu integrasi aturan, keterampilan, dan referensi desain dari toolkit ke lingkungan editor Cursor AI.

---

## 1. Lokasi Direktori Standar Cursor

- **Project Rules Directory**: `<project-root>/.cursor/rules/`
- **MCP Server Config**: `<project-root>/.cursor/mcp.json` atau Cursor Settings > Features > MCP.

---

## 2. Langkah Pemasangan

### A. Memasang Keterampilan sebagai Aturan Cursor (.cursorrules / .cursor/rules)
Cursor membaca berkas berekstensi `.mdc` atau `.md` di dalam direktori `.cursor/rules/`:

1. Buat folder `.cursor/rules` di proyek Anda:
   ```bash
   mkdir -p .cursor/rules
   ```
2. Salin keterampilan kunci dan sesuaikan sebagai rule:
   - `custom-skills/karpathy-guidelines/SKILL.md` -> `.cursor/rules/karpathy-guidelines.mdc`
   - `custom-skills/master-design-intelligence/SKILL.md` -> `.cursor/rules/master-design-intelligence.mdc`
   - `custom-skills/gsap-motion-specialist/SKILL.md` -> `.cursor/rules/gsap-motion.mdc`
   - `skills/third-party/antislop/rules/antislop-ui.md` -> `.cursor/rules/antislop-ui.mdc`

### B. Mendaftarkan MCP Server di Cursor
Buat berkas `.cursor/mcp.json` di root proyek:
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@latest"]
    }
  }
}
```

---

## 3. Pemanfaatan Referensi Desain
Letakkan folder `references/design-intelligence-library` di dalam workspace (misalnya di folder `docs/design-library`). Saat meminta Cursor mendesain antarmuka, rujuk file indeks dengan `@docs/design-library/DESIGN-INDEX.md` pada Cursor Composer.
