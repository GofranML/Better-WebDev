# Better WebDev — Gemini / Antigravity Project Instructions

Dokumen ini memuat panduan operasional agen untuk Google Antigravity & Gemini CLI. Untuk petunjuk selengkapnya, lihat [AGENTS.md](file:///D:/AI/better%20WebDev/AGENTS.md).

---

## Skill Tambahan: React Bits
- **URL Repositori**: [`https://github.com/DavidHDev/react-bits`](https://github.com/DavidHDev/react-bits)
- **Kategori**: Animated React Components, Interactive Text & Creative UI
- **Website**: [`https://reactbits.dev`](https://reactbits.dev)
- **Fungsi**: Komponen animasi siap pakai untuk React / Next.js (Split Text, Decrypted Text, Spotlight Card, Tilted Card, Hyperspeed Background, dll.) yang modular dan terintegrasi dengan Tailwind CSS & Framer Motion.

---

## Konfigurasi MCP (Model Context Protocol)
Konfigurasi MCP resmi untuk workspace ini:

```json
{
  "mcpServers": {
    "shadcn": {
      "command": "npx",
      "args": ["shadcn@latest", "mcp"]
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@0.0.84"]
    },
    "desktop-touch": {
      "command": "npx",
      "args": ["-y", "@harusame64/desktop-touch-mcp@2.4.0"]
    },
    "rea": {
      "command": "cmd.exe",
      "args": ["/d", "/c", "npx", "-y", "rea-agents@6.5.0", "mcp"]
    }
  }
}
```

Pastikan server MCP `shadcn` (`npx shadcn@latest mcp`) aktif di `%USERPROFILE%\.gemini\config\mcp_config.json` agar agen dapat mencari dan memasang komponen shadcn secara langsung.
