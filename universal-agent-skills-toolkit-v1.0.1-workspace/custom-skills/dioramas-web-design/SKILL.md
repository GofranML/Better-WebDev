---
name: dioramas-web-design
description: Build cinematic, interactive 3D websites using the Dioramas framework, Three.js, GSAP, and the official Dioramas examples. Use when creating immersive 3D landing pages, product showcases, animated websites, or adapting Dioramas to an existing project.
---

# Dioramas Web Design Skill

## Objective

Use the Dioramas repository as a reference and implementation foundation for cinematic, interactive 3D websites.

- **Official repository:** https://github.com/blendi-remade/dioramas
- **Local runtime & asset bank:** `./tools/graphics-3d/dioramas`
  - Engine core: `tools/graphics-3d/dioramas/src/core/engine.js`
  - Engine documentation: `tools/graphics-3d/dioramas/docs/ENGINE.md`
  - Reference examples: `tools/graphics-3d/dioramas/docs/ (Aset biner mentah dikecualikan demi efisiensi paket)`
  - 3D assets & manifests: `tools/graphics-3d/dioramas/docs/ (Manifest & pattern referensi)`

## Before implementation

1. Inspect the current project structure, framework, dependencies, and existing design.
2. If the Dioramas repository is available locally (`./tools/graphics-3d/dioramas`), read its `README.md` and `docs/ENGINE.md`.
3. Inspect relevant examples under `examples/` and reuse appropriate patterns.
4. Identify the existing stack before choosing an implementation strategy.
5. Present a short implementation plan before making major architectural changes.

## Design principles

- Use Three.js for interactive 3D scenes.
- Use GSAP for choreographed animation and scroll-based storytelling where appropriate.
- Prioritize cinematic lighting, realistic materials, visual depth, smooth transitions, and carefully composed camera movements.
- Create a clear visual hierarchy with strong typography and restrained UI.
- Make the website responsive and provide a usable mobile fallback.
- Respect reduced-motion preferences and provide accessible controls.
- Optimize 3D models, textures, loading performance, and GPU usage.
- Use loading states and graceful fallbacks when WebGL is unavailable.

## Implementation rules

1. Prefer reusing the existing Dioramas engine and examples when the repository is available.
2. Read `docs/ENGINE.md` before using the Dioramas engine APIs.
3. Do not invent engine methods or assume example paths are interchangeable.
4. Preserve existing project functionality and architecture.
5. Do not replace an existing framework or rewrite the entire project without justification.
6. If the target project uses Laravel, integrate the frontend into its existing Blade/Vite structure where feasible.
7. If the target project uses React or another framework, verify compatibility before integrating standalone Dioramas modules.
8. If Dioramas is unavailable locally, explain the limitation and use documented Three.js techniques instead.
9. Do not regenerate 3D assets if suitable bundled assets already exist.
10. Asset generation through fal.ai requires a valid API key and may incur costs. Never expose API keys in source code.

## Workflow

1. Inspect the project.
2. Select a relevant Dioramas example or engine capability.
3. Plan the page structure, 3D scene, interactions, and responsive behavior.
4. Implement the smallest suitable change.
5. Run the available build and validation commands.
6. Fix errors and check the browser rendering when browser tools are available.
7. Summarize changed files, commands executed, and any remaining limitations.

## Trigger examples

- Build a cinematic 3D landing page.
- Create a premium interactive product showcase.
- Add a Three.js hero scene to an existing website.
- Adapt a Dioramas example to my branding.
- Improve lighting, materials, scroll animations, and 3D interactions.


