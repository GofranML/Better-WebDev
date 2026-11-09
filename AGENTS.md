# Better WebDev — Agent Instructions (AGENTS.md)

Pedoman operasional utama untuk AI Coding Agents (Google Antigravity, Claude Code, OpenAI Codex, Gemini CLI, Cursor AI) pada workspace ini.

---

## 1. Instruksi Inti & Panduan Utama

Seluruh agen wajib mengikuti instruksi operasional yang terdokumentasi pada:
- [UNIVERSAL_AGENT_INSTRUCTIONS.md](file:///D:/AI/better%20WebDev/universal-agent-skills-toolkit-v1.0.1-workspace/instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md)
- [SKILL_SELECTION_GUIDE.md](file:///D:/AI/better%20WebDev/universal-agent-skills-toolkit-v1.0.1-workspace/instructions/SKILL_SELECTION_GUIDE.md)
- [EXTERNAL_REPOSITORIES_ADAPTER.md](file:///D:/AI/better%20WebDev/universal-agent-skills-toolkit-v1.0.1-workspace/skills/adapters/EXTERNAL_REPOSITORIES_ADAPTER.md)

---

## 2. Pustaka Skill & Keterampilan Utama

### A. Desain UI & Animasi Frontend
- **`react-bits`** ([https://github.com/DavidHDev/react-bits](https://github.com/DavidHDev/react-bits)):
  - **Fungsi**: Koleksi 60+ komponen animasi React, efek teks interaktif (*Split Text*, *Blur Text*, *Shiny Text*, *Decrypted Text*), kartu beranimasi (*Tilted Card*, *Spotlight Card*), dan efek latar belakang dinamis (*Hyperspeed*, *Waves*, *Ballpit*).
  - **Dokumentasi / Website**: [https://reactbits.dev](https://reactbits.dev)
  - **Teknologi**: React, Tailwind CSS, Framer Motion.
  - **Kapan Digunakan**: Saat proyek React atau Next.js memerlukan animasi teks, efek kartu interaktif, atau latar belakang dinamis tanpa menulis kode matematika animasi dari nol.
- **`master-design-intelligence`**: Standar arsitektur visual, skor craft, dan pencegahan AI-slop template.
- **`impeccable`**: Audit kualitas visual, kontras warna, ritme vertikal tipografi, dan affordance interaksi.
- **`lucide-icons`**: Pengambilan ikon SVG Lucide resmi tanpa halusinasi path.
- **`framer-motion`**: Gestur reaktif, transisi layout, dan micro-interactions di React.
- **`gsap-motion-specialist`**: Timeline kompleks, ScrollTrigger, dan parallax untuk Next.js maupun framework non-React (Blade/HTML).
- **`shaders-webgpu-specialist`**: Efek visual WebGPU/WebGL2 dengan sistem 4-tier fallback yang aman.

### B. Disiplin Rekayasa & Anti-Slop
- **`karpathy-guidelines`**: Surgical changes, kesederhanaan pertama, dan looping verifikasi terukur.
- **`ponytail`**: Prinsip "lazy senior dev" — solusi terkecil yang menyelesaikan masalah secara tuntas.
- **`antislop`**: Menghapus komentar basa-basi AI dan menjaga keterbacaan kode serta aksesibilitas antarmuka.

---

## 3. Konfigurasi Model Context Protocol (MCP)

Gunakan konfigurasi MCP berikut untuk mendukung otomatisasi komponen antarmuka, pengujian browser, dan inspeksi runtime:

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

### Integrasi Server MCP `shadcn`:
- **Command**: `npx shadcn@latest mcp`
- **Tujuan**: Memungkinkan agen menelusuri katalog komponen registri shadcn/ui secara otomatis dan menginstal blok antarmuka langsung sesuai kebutuhan tanpa navigasi manual ke browser.
