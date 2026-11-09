# Compatibility Matrix: Universal Agent Skills & Toolkit

Dokumen ini memetakan status kompatibilitas dan pengujian keterampilan di berbagai AI Coding Agents dan sistem operasi.

---

## 1. Matriks Kompatibilitas Lintas Agen AI

| Keterampilan / Komponen | Google Antigravity | Claude Code | OpenAI Codex | Gemini CLI | Cursor AI | Generic File Agents |
|---|:---:|:---:|:---:|:---:|:---:|:---:|
| **master-design-intelligence** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **anatomy (Skill & Kit)** | **VERIFIED** | **VERIFIED** | **COMPATIBLE** | **VERIFIED** | **COMPATIBLE** | **COMPATIBLE** |
| **gsap-motion-specialist** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **shaders-webgpu-specialist** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **dioramas-web-design** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **lucide-icons** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **framer-motion** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **karpathy-guidelines** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **impeccable** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **daisyui** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **codebase-improve** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **design-taste-frontend** | **VERIFIED** | **VERIFIED** | **COMPATIBLE** | **VERIFIED** | **COMPATIBLE** | **COMPATIBLE** |
| **avoid-ai-writing** | **VERIFIED** | **VERIFIED** | **COMPATIBLE** | **VERIFIED** | **COMPATIBLE** | **COMPATIBLE** |
| **humanizer** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **superpowers suite** | **VERIFIED** | **VERIFIED** | **COMPATIBLE** | **COMPATIBLE** | **VERIFIED** | **COMPATIBLE** |
| **ponytail suite** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** | **VERIFIED** |
| **playwright MCP** | **VERIFIED** | **VERIFIED** | N/A | **VERIFIED** | **VERIFIED** | N/A |
| **rea MCP** | **VERIFIED** | **VERIFIED** | N/A | **VERIFIED** | N/A | N/A |

### Keterangan Status:
- **`VERIFIED`**: Telah diuji atau diverifikasi strukturnya pada format frontmatter YAML dan eksekusi instruksinya.
- **`COMPATIBLE`**: Memiliki format markdown/instruksi murni yang secara teori dapat dibaca oleh LLM agen tanpa dependensi khusus.
- **`N/A`**: Protokol atau alat tidak didukung oleh platform agen tersebut (misalnya Codex API murni tanpa gateway MCP).

---

## 2. Matriks Kompatibilitas Sistem Operasi

| Sistem Operasi | Path Separator | Eksekusi Node.js (`.mjs`) | Eksekusi Python (`.py`) | MCP Support |
|---|:---:|:---:|:---:|:---:|
| **Windows 10 / 11** | `/` dan `\` | **VERIFIED** (Node.js 18+) | **VERIFIED** (Python 3.9+) | **VERIFIED** (NPX) |
| **macOS (Apple Silicon & Intel)** | `/` | **VERIFIED** (Node.js 18+) | **VERIFIED** (Python 3.9+) | **VERIFIED** (NPX) |
| **Linux (Ubuntu/Debian/Fedora)** | `/` | **VERIFIED** (Node.js 18+) | **VERIFIED** (Python 3.9+) | **VERIFIED** (NPX) |
