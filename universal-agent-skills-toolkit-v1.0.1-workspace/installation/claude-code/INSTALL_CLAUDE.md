# Panduan Instalasi Toolkit untuk Claude Code

Dokumen ini memandu pemasangan keterampilan dan konfigurasi MCP dari toolkit ke lingkungan Claude Code (Anthropic).

---

## 1. Lokasi Direktori Resmi Claude Code

- **Global Skills Directory**: `~/.claude/skills/`
- **Project-Level Skills**: `<project-root>/.claude/skills/`
- **Claude Desktop MCP Config**:
  - macOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
  - Windows: `%APPDATA%\Claude\claude_desktop_config.json`
  - Linux: `~/.config/Claude/claude_desktop_config.json`

---

## 2. Langkah Pemasangan

### A. Memasang Keterampilan ke Tingkat Global
Salin folder custom skills yang dibutuhkan ke direktori `~/.claude/skills/`:

```bash
# Contoh Linux/macOS
mkdir -p ~/.claude/skills
cp -r ./custom-skills/master-design-intelligence ~/.claude/skills/
cp -r ./custom-skills/anatomy ~/.claude/skills/
cp -r ./custom-skills/gsap-motion-specialist ~/.claude/skills/
cp -r ./custom-skills/shaders-webgpu-specialist ~/.claude/skills/

# Salin referensi desain pendukung
mkdir -p ~/.claude/references
cp -r ./references/design-intelligence-library ~/.claude/references/
```

### B. Mendaftarkan MCP Server
Buka berkas `claude_desktop_config.json` dan gabungkan blok `mcpServers` dari `tools/mcp/mcp-universal.json`:
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@latest"]
    },
    "desktop-touch": {
      "command": "npx",
      "args": ["-y", "@harusame64/desktop-touch-mcp"]
    },
    "rea": {
      "command": "npx",
      "args": ["-y", "rea-agents@6.5.0", "mcp"]
    }
  }
}
```

---

## 3. Verifikasi
Jalankan Claude Code dan ketikkan `/skills` untuk memastikan skill telah terdaftar dan siap dipanggil.
