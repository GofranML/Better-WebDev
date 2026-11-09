# Better WebDev
### Universal AI Agent Skills, Protocols & Toolkit Portable Distribution (v1.0.1)

[![Version](https://img.shields.io/badge/version-1.0.1-blue.svg)](universal-agent-skills-toolkit-v1.0.1-workspace/CHANGELOG.md)
[![License](https://img.shields.io/badge/license-MIT%20%7C%20Apache%202.0%20%7C%20CC--BY--4.0-green.svg)](universal-agent-skills-toolkit-v1.0.1-workspace/LICENSES.md)
[![Architecture](https://img.shields.io/badge/architecture-portable%20%26%20self--contained-orange.svg)](universal-agent-skills-toolkit-v1.0.1-workspace/COMPATIBILITY.md)
[![Agents](https://img.shields.io/badge/supported%20agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20Gemini%20%7C%20Cursor-purple.svg)](universal-agent-skills-toolkit-v1.0.1-workspace/INSTALL.md)

**Better WebDev** is a battle-tested, portable distribution designed to elevate AI coding assistants from simple code-generation bots into senior-grade software engineers, meticulous UI/UX craftspeople, and disciplined technical architects.

It packages a comprehensive suite of curated skills, engineering protocols, verified design references, Model Context Protocol (MCP) configurations, and anti-slop guidelines developed in the **Google Antigravity (AGY)** ecosystem and fully adapted for **Claude Code, OpenAI Codex, Gemini CLI, Cursor AI, and generic LLM agents**.

---

##  What Makes Better WebDev Different?

Standard AI agents often suffer from generic code patterns, over-engineering, cliché design templates ("AI slop"), uncontrolled dependencies, and hallucinated API paths. This toolkit equips agents with clear operational standards:

| Capability Pillar | Key Skills & Frameworks | What It Solves |
|---|---|---|
| **Design Craft & Visual Intelligence** | `master-design-intelligence`, `anatomy`, `impeccable`, `daisyui`, `lucide-icons`, `react-bits` ([`DavidHDev/react-bits`](https://github.com/DavidHDev/react-bits)) | Stops generic, soulless interfaces; enforces authentic SVG icons, animated React components, four-tone isometric technical figures, DaisyUI components, and strict anti-watermark policies. |
| **Advanced Motion & 3D Engineering** | `gsap-motion-specialist`, `shaders-webgpu-specialist`, `dioramas-web-design`, `framer-motion`, `react-bits` | Replaces jarring CSS with production-grade GSAP ScrollTrigger timelines, declarative Framer Motion, 3D Three.js dioramas, text micro-animations, and WebGPU shaders with automatic 4-tier fallbacks. |
| **Anti-Slop & Copywriting Hygiene** | `antislop-ui`, `antislop-code`, `antislop-human`, `antislop-copywriting`, `humanizer`, `avoid-ai-writing` | Eradicates robotic AI phrasing, deletes low-value AI comment bloat, guarantees WCAG accessibility, and ensures human-sounding copy. |
| **Senior Engineering Discipline** | `karpathy-guidelines` ([`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills)), `ponytail`, `superpowers` (TDD, Worktrees, Systematic Debugging), `codebase-improve` | Enforces minimalist surgical code edits, "lazy senior dev" YAGNI principles, isolated git worktrees, strict test-driven development, and root-cause debugging before patching. |
| **Tooling & Protocol Integration** | `mcp-adapters` (Playwright, Desktop Touch, REA, shadcn), `graphify`, `audit-toolkit-health` | Standardized Model Context Protocol (MCP) tool configurations for headless browser verification, reverse-engineering, desktop GUI control, component registry discovery (`shadcn`), and architectural graph inspection. |
| **Application Security & Bug Hunting** | `agentic-bug-hunter` ([`awarexone/Agentic-Bug-Hunter`](https://github.com/awarexone/Agentic-Bug-Hunter)), `reverse-engineer-anything` (REA) | Automates ethical reconnaissance (`/recon`), web vulnerability testing (`/hunt`), 7-question validation gating (`/validate`), and submission-ready bug bounty reports (`/report`). |

---

##  Repository Structure

```text
Better-WebDev/
├── README.md                                           # Primary repository documentation (this file)
├── .gitignore                                          # Clean repository exclusions
│
├── universal-agent-skills-toolkit-v1.0.1.zip           # Self-contained portable distribution archive (~43 MB)
├── universal-agent-skills-toolkit-v1.0.1.zip.sha256    # SHA-256 verification hash
│
└── universal-agent-skills-toolkit-v1.0.1-workspace/   # Unpacked portable toolkit workspace
    ├── README.md                                       # Workspace documentation
    ├── INSTALL.md                                      # Cross-agent installation guide
    ├── CHANGELOG.md                                    # Version history & release notes
    ├── COMPATIBILITY.md                                # Platform & harness compatibility matrix
    ├── LICENSES.md                                     # Upstream licenses & attribution register
    ├── SECURITY.md                                     # Privacy, sanitization & security policy
    ├── MANIFEST.json                                   # Machine-readable component manifest
    ├── AUDIT_REPORT.md                                 # Complete 40-source environment audit report
    │
    ├── instructions/                                   # Universal agent operational guidelines
    │   ├── UNIVERSAL_AGENT_INSTRUCTIONS.md             # Core behavioral rules for receiving AI agents
    │   ├── INSTALLATION_WORKFLOW.md                    # Zero-duplicate installation procedures
    │   ├── SKILL_SELECTION_GUIDE.md                    # Conflict resolution & skill selection matrix
    │   ├── DUPLICATE_DETECTION.md                      # Local host duplicate detection protocols
    │   ├── SECURITY_POLICY.md                          # DOM sanitization & secret protection rules
    │   └── PORTABILITY_GUIDE.md                        # Relative path & cross-platform portability
    │
    ├── custom-skills/                                  # 8 Core portable Antigravity custom skills
    │   ├── master-design-intelligence/                 # Visual direction, craft scoring & clean code
    │   ├── anatomy/                                    # Isometric SVG technical illustration engine
    │   ├── gsap-motion-specialist/                     # GSAP Core, ScrollTrigger & animation timelines
    │   ├── shaders-webgpu-specialist/                  # WebGPU shaders, WGSL & 4-tier canvas fallback
    │   ├── dioramas-web-design/                        # Cinematic 3D web scenes via Three.js
    │   ├── lucide-icons/                               # 1,900+ authentic Lucide SVG icon extractor
    │   ├── framer-motion/                              # Declarative React motion & WAAPI engine
    │   └── karpathy-guidelines/                        # Minimalist surgical LLM coding behaviors (upstream: multica-ai/andrej-karpathy-skills)
    │
    ├── skills/                                         # Categorized skill collections
    │   ├── official/                                   # DaisyUI, Impeccable, Codebase-Improve
    │   ├── third-party/                                # Anti-slop suite, Ponytail, Superpowers, ADRs
    │   ├── custom/                                     # Indexed custom skills mirror
    │   └── adapters/                                   # Integration guides for 15 external skill repos
    │
    ├── tools/                                          # Technical utilities & runtime configurations
    │   ├── mcp/                                        # Standardized MCP server adapters (Playwright, Touch, REA, shadcn)
    │   ├── animation/                                  # Motion API documentation & references
    │   ├── graphics-3d/                                # Dioramas Three.js engines & reference assets
    │   ├── ui-libraries/                               # Complete DaisyUI Tailwind component references
    │   └── utilities/                                  # Health diagnosis script (`audit-toolkit-health.mjs`)
    │
    ├── references/                                     # Self-contained knowledge bases
    │   ├── design-intelligence-library/                # 14 Design indexes, rules & anti-watermark guides
    │   ├── icons/                                      # Lucide category index & integration recipes
    │   ├── writing-anti-slop/                          # Anti-AI-slop phrases, vocabulary & style guides
    │   └── architecture/                               # ADR templates, click-path audits & onboarding
    │
    ├── installation/                                   # Dedicated per-agent installation manuals
    │   ├── antigravity/                                # Google Antigravity (AGY)
    │   ├── claude-code/                                # Claude Code CLI
    │   ├── codex/                                      # OpenAI Codex / AGENTS.md
    │   ├── gemini-cli/                                 # Google Gemini CLI
    │   ├── cursor/                                     # Cursor AI (.cursor/rules/*.mdc)
    │   └── generic-agents/                             # Generic file-based LLM agents
    │
    ├── audit/                                          # Comprehensive verification logs
    │   ├── SOURCE_INVENTORY.md                         # Detailed catalog of all 40 skill sources
    │   ├── DUPLICATE_REPORT.md                         # Duplicate resolution & consolidation log
    │   ├── LICENSE_AUDIT.md                            # Open-source license verification
    │   ├── SECURITY_AUDIT.md                           # Path sanitization & secret protection audit
    │   └── COMPATIBILITY_AUDIT.md                      # Multi-agent interoperability scorecards
    │
    └── examples/                                       # End-to-end implementation projects
        ├── frontend-project/                           # Clean accessible SaaS React dashboard
        ├── design-project/                             # Multi-step design craft workflow
        ├── animation-project/                          # GSAP timeline + WebGPU canvas fallback
        └── agent-setup/                                # Fresh agent initialization template
```

---

##  Quickstart Guide

No manual file copying or pasting is required. Let your AI Agent in the CLI extract and install everything automatically in 3 simple steps:

### Step 1: Download the Toolkit Archive
Download or place [`universal-agent-skills-toolkit-v1.0.1.zip`](universal-agent-skills-toolkit-v1.0.1.zip) into your working directory:

```bash
# Option A: Download directly via curl / wget
curl -L -O https://github.com/GofranML/Better-WebDev/raw/main/universal-agent-skills-toolkit-v1.0.1.zip

# Option B: Or clone the full repository
git clone https://github.com/GofranML/Better-WebDev.git
```

### Step 2: Open Your AI Agent in the Terminal
Open your terminal in the directory where the zip file is located, then launch your AI Agent:

```bash
# Google Antigravity CLI (AGY)
agy

# Or Claude Code
claude

# Or Gemini CLI / Cursor terminal
gemini
```

### Step 3: Instruct Your Agent to Self-Install
Send this single prompt directly to your AI Agent in the CLI chat:

> ```text
> Extract universal-agent-skills-toolkit-v1.0.1.zip in this directory, review the instructions in INSTALL.md and instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md, and automatically configure and install the appropriate skills and guidelines for this agent environment without duplicating existing tools.
> ```

### How It Works Under the Hood
1. **Agent Self-Identification**: Your AI Agent automatically detects its host environment (Google Antigravity, Claude Code, Gemini CLI, Cursor, or Codex).
2. **Duplicate Prevention Audit**: The agent scans your existing host skills against `MANIFEST.json` and `DUPLICATE_DETECTION.md`.
3. **Automated Linking & Setup**: The agent creates symlinks or copies only missing skills and protocols into the agent's target directory.
4. **Verification**: The agent verifies that all frontmatter metadata and operational instructions are discovered and loaded properly.

---

### Manual Integration Reference (Optional)
If you prefer manual placement or need customized routing, refer to the target directories below:

| Agent | Target Directory / Integration Method | Documentation |
|---|---|---|
| **Google Antigravity (AGY)** | Copy `custom-skills/*` to `~/.gemini/config/skills/` | [`INSTALL_AGY.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/antigravity/INSTALL_AGY.md) |
| **Claude Code** | Copy desired skills to `~/.claude/skills/` | [`INSTALL_CLAUDE.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/claude-code/INSTALL_CLAUDE.md) |
| **OpenAI Codex** | Append `UNIVERSAL_AGENT_INSTRUCTIONS.md` to your workspace `AGENTS.md` | [`INSTALL_CODEX.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/codex/INSTALL_CODEX.md) |
| **Gemini CLI** | Copy skills to `~/.gemini/config/skills/` | [`INSTALL_GEMINI.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/gemini-cli/INSTALL_GEMINI.md) |
| **Cursor AI** | Convert targeted skills into `.cursor/rules/*.mdc` | [`INSTALL_CURSOR.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/cursor/INSTALL_CURSOR.md) |
| **Generic File-Based Agents** | Add `UNIVERSAL_AGENT_INSTRUCTIONS.md` to repo root as `AGENT_RULES.md` | [`INSTALL_GENERIC.md`](universal-agent-skills-toolkit-v1.0.1-workspace/installation/generic-agents/INSTALL_GENERIC.md) |

---

##  Security & Privacy Policy

- **Zero Hardcoded Secrets**: All files, scripts, and MCP manifests are 100% free of API tokens, private credentials, and local machine usernames.
- **Path Sanitization**: All internal documentation and cross-references utilize relative portable paths (`./` and `file:///`) instead of hardcoded host paths.
- **Client-Side Safety**: Includes strict DOM sanitization patterns (XSS prevention) and memory leak cleanup standards for Three.js and WebGPU canvases.

---

##  Licenses & Attribution

This distribution bundles open-source and permissively licensed materials:
- **MIT License**: Tooling utilities, DaisyUI components, GSAP adapters, Lucide icons (ISC/MIT), and example codebases.
- **Apache 2.0 / CC-BY-4.0**: Behavioral instructions, anti-slop guidelines, and architectural templates.
- Complete licensing records and upstream attributions are cataloged in [`LICENSES.md`](universal-agent-skills-toolkit-v1.0.1-workspace/LICENSES.md).

---

*Authored and curated for the next generation of disciplined, high-craft AI agents.*
