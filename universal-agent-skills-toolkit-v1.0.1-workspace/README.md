# Universal AI Agent Skills & Toolkit Portable Distribution

`Universal-Agent-Skills-Toolkit` adalah paket distribusi universal yang menghimpun kumpulan keterampilan (skills), alur kerja rekayasa agen (agent instructions), pustaka referensi desain terverifikasi, adapter Model Context Protocol (MCP), dan custom skills yang dikembangkan di lingkungan Google Antigravity (AGY).

Paket ini dirancang secara portabel, mandiri (*self-contained*), dan bebas dari ketergantungan jalur mesin lokal, sehingga dapat dibagikan dan langsung diintegrasikan oleh berbagai AI Coding Agents lainnya (seperti Google Antigravity, Claude Code, OpenAI Codex, Gemini CLI, Cursor AI, dan agen AI berbasis berkas).

---

## 1. Arsitektur Paket Distribusi

```text
Universal-Agent-Skills-Toolkit/
├── README.md                          # Panduan pengenalan & dokumentasi utama
├── INSTALL.md                         # Panduan instalasi cepat lintas agen
├── CHANGELOG.md                       # Catatan riwayat versi & perubahan
├── LICENSES.md                        # Register lisensi & kepatuhan hak cipta
├── SECURITY.md                        # Kebijakan privasi data & sanitasi jalur
├── COMPATIBILITY.md                   # Matriks kompatibilitas lintas agen AI
├── MANIFEST.json                      # Indeks mesin seluruh komponen paket
│
├── instructions/
│   ├── UNIVERSAL_AGENT_INSTRUCTIONS.md # Instruksi mutlak bagi agen AI penerima
│   ├── INSTALLATION_WORKFLOW.md        # Alur kerja instalasi bebas duplikasi
│   ├── SKILL_SELECTION_GUIDE.md        # Panduan pemilihan skill tanpa overlap
│   ├── DUPLICATE_DETECTION.md          # Protokol deteksi instalasi lokal
│   ├── SECURITY_POLICY.md              # Standar keamanan kode & sanitasi DOM
│   └── PORTABILITY_GUIDE.md            # Panduan jalur relatif & portabilitas
│
├── custom-skills/                     # Salinan portabel custom skills AGY
│   ├── master-design-intelligence/    # Layer orkestrasi keputusan visual & clean code
│   ├── anatomy/                       # Visual explainer isometrik SVG + kit lengkap
│   ├── gsap-motion-specialist/        # Rekayasa gerak GSAP & ScrollTrigger
│   ├── shaders-webgpu-specialist/     # Efek visual kanvas WebGPU & 4-tier fallback
│   ├── dioramas-web-design/           # Panduan 3D Three.js berbasis Dioramas
│   ├── lucide-icons/                  # Antarmuka ekstraksi 1.903 ikon SVG otentik
│   ├── framer-motion/                 # Animasi deklaratif React & Motion WAAPI
│   └── karpathy-guidelines/           # Panduan perilaku coding bedah minimalis (multica-ai/andrej-karpathy-skills)
│
├── skills/                            # Klasifikasi hierarkis keterampilan
│   ├── official/                      # Skills resmi (DaisyUI, Impeccable, Improve)
│   ├── third-party/                   # Skills pihak ketiga (Anti-slop, Superpowers, dll)
│   ├── custom/                        # Kaca cermin custom skills terindeks
│   └── adapters/                      # Panduan integrasi 14 repositori eksternal
│
├── tools/                             # Perangkat pendukung teknis
│   ├── mcp/                           # Konfigurasi universal MCP (Playwright, Touch, REA)
│   ├── animation/                     # Dokumentasi & referensi API Motion
│   ├── graphics-3d/                   # Core engine & dokumentasi Dioramas Three.js
│   ├── ui-libraries/                  # Pustaka komponen DaisyUI lengkap
│   └── utilities/                     # Skrip diagnosa kesehatan & helper kit
│
├── references/                        # Pangkalan pengetahuan mandiri
│   ├── design-intelligence-library/   # 14 berkas indeks, seleksi, & clean code policy
│   ├── icons/                         # Indeks kategori Lucide & resep integrasi
│   ├── writing-anti-slop/             # Aturan, frasa, dan struktur anti-slop
│   └── architecture/                  # Template ADR, click-path, & onboarding
│
├── installation/                      # Panduan khusus instalasi per platform
│   ├── antigravity/                   # Panduan Google Antigravity
│   ├── claude-code/                   # Panduan Claude Code
│   ├── codex/                         # Panduan OpenAI Codex
│   ├── gemini-cli/                    # Panduan Gemini CLI
│   ├── cursor/                        # Panduan Cursor AI
│   └── generic-agents/                # Panduan generic file-based agents
│
├── audit/                             # Laporan audit komprehensif
│   ├── SOURCE_INVENTORY.md            # Inventarisasi 40 sumber lengkap
│   ├── DUPLICATE_REPORT.md            # Laporan resolusi duplikasi
│   ├── LICENSE_AUDIT.md               # Evaluasi hukum lisensi
│   ├── SECURITY_AUDIT.md              # Laporan sanitasi keamanan
│   └── COMPATIBILITY_AUDIT.md         # Evaluasi kompatibilitas lintas agen
│
└── examples/                          # Contoh proyek implementasi nyata
    ├── frontend-project/              # Komponen SaaS React bersih & aksesibel
    ├── design-project/                # Alur craft desain 3 tahap
    ├── animation-project/             # Animasi GSAP & WebGPU fallback
    └── agent-setup/                   # Prosedur inisialisasi agen baru
```

---

## 2. Fitur Utama Toolkit

1. **Orkestrasi Desain Tanpa Watermark**: Memadukan `master-design-intelligence`, `design-taste-frontend`, dan `impeccable` untuk menghasilkan antarmuka berkualitas craft tinggi bebas template klise AI dan bebas logo vendor pihak ketiga.
2. **Rekayasa Gerak Ortogonal**: Pemisahan tegas antara CSS transitions, animasi deklaratif React (`framer-motion`), timeline kompleks ScrollTrigger (`gsap-motion-specialist`), efek kanvas GPU (`shaders-webgpu-specialist`), dan adegan 3D (`dioramas-web-design`).
3. **Pemberantasan Pola AI-Slop**: Penataan terstruktur 5 alat anti-slop (`humanizer`, `avoid-ai-writing`, `no-ai-slop`, `stop-slop`, `antislop`) dengan pembagian peran yang jelas.
4. **Alur Kerja Rekayasa Senior**: Mengintegrasikan `superpowers` (TDD, brainstorming, worktrees), `ponytail` (anti-overengineering), dan `karpathy-guidelines` ([`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills) — bedah kode minimalis).
5. **Universal Portability**: Semua berkas telah disanitasi dari absolute path lokal Windows dan siap digunakan pada Linux, macOS, maupun Windows.
6. **Keamanan Aplikasi & Bug Hunting**: Mengintegrasikan adaptasi `agentic-bug-hunter` ([`awarexone/Agentic-Bug-Hunter`](https://github.com/awarexone/Agentic-Bug-Hunter)) untuk reconnaissance, hunting kerentanan web, 7-question validation gate, dan pelaporan bug bounty standar industri secara etis dan terotorisasi.

---

## 3. Uji Cepat Integritas Paket

Pastikan Node.js (v18+) terpasang pada terminal Anda, lalu jalankan:
```bash
node tools/utilities/audit-toolkit-health.mjs
```
Skrip akan memvalidasi seluruh berkas panduan, custom skills, manifest, dan konfigurasi MCP secara otomatis.
