# Panduan Instalasi Toolkit untuk Google Antigravity (AGY)

Dokumen ini memandu pemasangan keterampilan, plugin, dan konfigurasi MCP dari toolkit ke lingkungan Google Antigravity.

---

## 1. Lokasi Direktori Resmi AGY

- **Global Skills Directory**: `%USERPROFILE%\.gemini\config\skills\`
- **Installed Plugins Directory**: `%USERPROFILE%\.gemini\config\plugins\`
- **MCP Configuration File**: `%USERPROFILE%\.gemini\config\mcp_config.json`
- **Global Rules Directory**: `%USERPROFILE%\.gemini\config\rules\`

---

## 2. Langkah Pemasangan

### A. Memasang Custom Skills
Salin folder skill yang diinginkan dari `custom-skills/` ke `%USERPROFILE%\.gemini\config\skills\`:

```powershell
# Contoh memasang master-design-intelligence
Copy-Item -Path ".\custom-skills\master-design-intelligence" -Destination "$HOME\.gemini\config\skills\master-design-intelligence" -Recurse -Force

# Contoh memasang anatomy lengkap beserta kit
Copy-Item -Path ".\custom-skills\anatomy" -Destination "$HOME\.gemini\config\skills\anatomy" -Recurse -Force
```

### B. Memasang Referensi Desain
Salin pustaka referensi ke direktori kerja atau lokasi yang dapat diakses AGY:
```powershell
Copy-Item -Path ".\references\design-intelligence-library" -Destination "D:\AI\design-intelligence-library" -Recurse -Force
```

### C. Mendaftarkan MCP Server
Tambahkan blok server dari `tools\mcp\mcp-universal.json` ke dalam berkas `%USERPROFILE%\.gemini\config\mcp_config.json`.

---

## 3. Verifikasi
Buka sesi CLI AGY baru dan jalankan instruksi:
`Tampilkan daftar skills yang aktif.`
Pastikan skill yang baru dipasang terdeteksi di terminal.
