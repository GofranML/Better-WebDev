# Security & Privacy Policy: Universal Agent Skills & Toolkit

Dokumen ini menjelaskan kebijakan keamanan data, privasi, dan prosedur pelaporan kerentanan untuk paket distribusi `Universal-Agent-Skills-Toolkit`.

---

## 1. Kebijakan Privasi & Nol Kredensial (Zero-Secret Policy)

- **Tidak Ada Kunci API Pribadi**: Seluruh berkas skill, skrip bantuan, dan template konfigurasi telah dipindai dan dipastikan 100% bebas dari token autentikasi, kunci API (OpenAI, Anthropic, Gemini, Fal.ai, AWS, dll), serta kredensial akun pribadi.
- **Sanitasi Jalur Pengguna**: Seluruh jalur sistem yang mengarah ke username pengguna (`C:\Users\epann\...`) telah dinormalisasi menjadi jalur generik atau relative path standar.

---

## 2. Tata Kelola Eksekusi Skrip (Script Execution Safety)

1. **Skrip Ekstensi `.mjs`**: Skrip seperti `audit-toolkit-health.mjs`, `kit/lathe.mjs`, `kit/tube.mjs`, dan `kit/audit.mjs` beroperasi murni pada manipulasi SVG, inspeksi filesystem lokal secara read-only, atau kalkulasi geometri matematis tanpa koneksi jaringan eksternal.
2. **Server MCP**: Server MCP yang disertakan (`@playwright/mcp`, `@harusame64/desktop-touch-mcp`, `rea-agents`) dijalankan melalui runtime npx resmi. Pastikan Anda hanya menjalankan server MCP dari penyedia tepercaya.

---

## 3. Pelaporan Kerentanan

Jika Anda menemukan potensi celah keamanan, paparan kredensial yang tidak disengaja, atau perilaku skrip yang mencurigakan di dalam paket ini, harap laporkan melalui saluran isu privat atau hubungi pengelola repositori sebelum mempublikasikan temuan ke publik.
