---
name: codebase-onboarding
description: Analyze an unfamiliar codebase and generate a structured onboarding guide with architecture map, key entry points, conventions, and a starter instruction guide (GEMINI.md / AGENTS.md / CLAUDE.md). Use when joining a new project or setting up Antigravity for the first time in a repo.
metadata:
  origin: ECC-curated
---

# Codebase Onboarding

Systematically analyze an unfamiliar codebase and produce a structured onboarding guide. Designed for engineers joining a new project or setting up Antigravity / AI coding agents in an existing repository.

## When to Use

- First time opening a project or onboarding into an existing codebase.
- Joining a new repository or client workspace.
- When the user asks: "Explain how this project is structured", "Onboard me", or "Generate project instructions".

---

## 4-Phase Reconnaissance & Onboarding Process

### Phase 1: Rapid Signal Gathering (Parallel)
Gather key structural indicators without reading every file:
1. **Package Manifests**: `package.json`, `composer.json`, `Cargo.toml`, `pyproject.toml`, `go.mod`.
2. **Framework Signatures**: `vite.config.*`, `next.config.*`, `artisan`, `django`, `angular.json`.
3. **Entry Points**: `index.*`, `main.*`, `app.*`, `src/routes`, `routes/web.php`, `server.*`.
4. **Directory Topology**: Top 2 directory levels (ignoring `node_modules`, `vendor`, `.git`, `dist`).
5. **Tooling & CI**: `.env.example`, `tsconfig.json`, `.github/workflows/`, `Dockerfile`, `Makefile`.
6. **Test Harness**: `tests/`, `test/`, `vitest.config.*`, `phpunit.xml`, `jest.config.*`.

### Phase 2: Architecture & Data Flow Mapping
From the signals, map:
- **Tech Stack Table**: Languages, frameworks, ORMs/Databases, bundlers, test runners.
- **Topological Directory Map**: Map top-level directories directly to their architectural purpose.
- **Request Lifecycle**: Trace one typical user request from entry (route/controller) → validation/middleware → service/business logic → database/ORM → view/JSON response.

### Phase 3: Convention & Pattern Detection
Document active conventions that AI coding agents must preserve:
- **Naming Conventions**: File naming (kebab vs camel vs Pascal), component naming, route naming.
- **Architectural Patterns**: Repository pattern, Service layer, Action classes, hooks, store dispatching.
- **Git & Workflow**: Branch conventions, commit style, test invocation commands.

### Phase 4: Output Generation

Generate two structured deliverables:

#### Deliverable 1: Project Onboarding Guide (`docs/ONBOARDING.md` or session response)
```markdown
# Onboarding Guide: [Project Name]

## 1. Overview
[Concise summary of project purpose and core users]

## 2. Tech Stack Matrix
| Layer | Technology | Version | Purpose |
| :--- | :--- | :--- | :--- |
| **Frontend** | [e.g. Blade / Tailwind CSS / DaisyUI] | - | UI Presentation |
| **Backend** | [e.g. Laravel / PHP] | 11.x | API & Business Logic |
| **Database** | [e.g. MySQL / SQLite] | - | Persistence |

## 3. Directory Map
- `app/Http/Controllers/`: HTTP handlers and controllers.
- `app/Models/`: Eloquent ORM models and relationships.
- `resources/views/`: Blade UI views and templates.
- `routes/`: Web and API routing definitions.

## 4. Key Workflows & Common Commands
- Development server: `[command]`
- Test suite: `[command]`
- Build / Compile: `[command]`
- Database migrations: `[command]`
```

#### Deliverable 2: Starter Instruction Guide (`GEMINI.md` / `AGENTS.md`)
Create or refine the root rules file so AI agents immediately adhere to project conventions:
- Stack summary
- Code style & conventions
- Exact test and verification commands
- Known constraints and security guidelines
