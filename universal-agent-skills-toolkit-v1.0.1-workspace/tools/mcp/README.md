# Universal Model Context Protocol (MCP) Configuration Guide (v1.0.1)

Dokumen ini menjelaskan cara memasang dan mengonfigurasi MCP servers yang disertakan di dalam toolkit untuk berbagai agen AI dengan versi terverifikasi (*pinned reproducible versions*).

---

## 1. Daftar Server MCP Terverifikasi

| Nama Server | Paket Resmi Ter-pin | Versi Terverifikasi | Kategori | Deskripsi |
|---|---|:---:|---|---|
| **`playwright`** | `@playwright/mcp` | `0.0.84` | Browser Automation | Navigasi web, pengujian UI headless, inspeksi konsol, screenshot DOM. |
| **`desktop-touch`** | `@harusame64/desktop-touch-mcp` | `2.4.0` | Desktop Automation | Interaksi GUI desktop, mouse/keyboard input, tangkapan layar OS. |
| **`rea`** | `rea-agents` | `6.5.0` | Reverse Engineering | Analisis biner native, dekompilasi JS/Electron, pelacakan runtime. |

---

## 2. Cara Pemasangan per Agen

### A. Google Antigravity (AGY)
Salin konfigurasi ke `%USERPROFILE%\.gemini\config\mcp_config.json`:
```json
{
  "mcpServers": {
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

### B. Claude Desktop / Claude Code
Tambahkan ke konfigurasi Claude Desktop (`claude_desktop_config.json`):
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@0.0.84"]
    },
    "desktop-touch": {
      "command": "npx",
      "args": ["-y", "@harusame64/desktop-touch-mcp@2.4.0"]
    },
    "rea": {
      "command": "npx",
      "args": ["-y", "rea-agents@6.5.0", "mcp"]
    }
  }
}
```

### C. Cursor AI
Tambahkan ke direktori proyek `.cursor/mcp.json`:
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@0.0.84"]
    }
  }
}
```

---

## 3. Prasyarat Sistem & Kebijakan Nol Konflik
- **Node.js**: v18.0.0 atau lebih tinggi.
- **NPX**: Tersedia di PATH lingkungan sistem.
- **Deteksi Otomatis**: Jika server MCP sudah terpasang dan berfungsi pada agen Anda, jangan menimpa konfigurasi yang sudah ada.
