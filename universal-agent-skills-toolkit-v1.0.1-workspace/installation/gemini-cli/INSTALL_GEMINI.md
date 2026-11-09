# Panduan Instalasi Toolkit untuk Gemini CLI

Dokumen ini memandu pemasangan keterampilan ke dalam lingkungan Gemini CLI mandiri.

---

## 1. Lokasi Direktori Standar Gemini CLI

- **Global Config & Skills**: `~/.gemini/config/skills/`
- **MCP Configuration**: `~/.gemini/config/mcp_config.json`

---

## 2. Langkah Pemasangan

```bash
# Buat direktori skills jika belum ada
mkdir -p ~/.gemini/config/skills

# Salin custom skills pilihan
cp -r ./custom-skills/master-design-intelligence ~/.gemini/config/skills/
cp -r ./custom-skills/anatomy ~/.gemini/config/skills/
cp -r ./custom-skills/gsap-motion-specialist ~/.gemini/config/skills/
cp -r ./custom-skills/shaders-webgpu-specialist ~/.gemini/config/skills/
cp -r ./skills/official/impeccable ~/.gemini/config/skills/

# Salin konfigurasi MCP
cp ./tools/mcp/mcp-universal.json ~/.gemini/config/mcp_config.json
```

---

## 3. Verifikasi
Buka sesi terminal Gemini CLI baru dan verifikasi apakah frontmatter YAML dari masing-masing skill berhasil diparsing secara otomatis saat sesi diinisialisasi.
