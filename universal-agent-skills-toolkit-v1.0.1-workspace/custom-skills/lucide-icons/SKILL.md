---
name: lucide-icons
description: Search, locate, and extract authentic Lucide SVG icons from the local 1,900+ icon collection. Use whenever adding icons to UI, Blade, JSX, or Tailwind components to guarantee genuine SVG markup without path hallucination.
---

# Lucide Icons Skill

## Objective

Provide authentic, un-hallucinated vector icons from the official local Lucide collection (`tools/lucide-svg/icons`), supporting 1,903 stroke-based SVG icons with categorized metadata.

- **Local Icon Bank:** `../../references/icons/`
- **Metadata Format:** Every icon has a `<name>.svg` and a corresponding `<name>.json` (containing tags, aliases, and categories).
- **Category Reference:** Consult [./references/categories.md](./references/categories.md) for the 42 curated UI domains.
- **Framework Recipes:** Consult [./references/integration-recipes.md](./references/integration-recipes.md) for DaisyUI, Tailwind CSS, Blade, and React patterns.

---

## When to Use This Skill

1. When designing UI components that require icons (buttons, badges, navbars, sidebars, alerts).
2. When the user asks for an icon by concept (e.g. "add a cart icon", "need a search icon", "show a download button").
3. When integrating icons into Laravel Blade, Tailwind CSS, DaisyUI, Vue, or React.
4. Whenever you need exact SVG path data. **Never invent or guess SVG path coordinates.** Always extract from the local source.

---

## Workflow: Locate & Extract

### Step 1: Discover the Exact Icon Name
Do not guess names. Use one of these methods to find the authentic icon:

1. **Check Common Names / Category Index:** Look up the domain in [./references/categories.md](./references/categories.md).
2. **Local Filename Search (PowerShell):**
   ```powershell
   Get-ChildItem -Path "./references/icons" -Filter "*search*.svg" | Select-Object -ExpandProperty BaseName
   ```
3. **Keyword / Tag Search (PowerShell):**
   ```powershell
   Get-ChildItem -Path "./references/icons\*.json" | Where-Object {
       (Get-Content $_.FullName -Raw) -match "checkout"
   } | Select-Object -ExpandProperty BaseName
   ```

### Step 2: Read & Verify the SVG Source
Once the icon name is identified (e.g. `arrow-right`, `shopping-cart`, `bell`), read the exact SVG file:
- Path: `../.../../references/icons/svg/<name>.svg`
- Read with `read_file` or PowerShell `Get-Content`.

### Step 3: Embed According to Framework
Adapt the raw SVG attributes according to the project's styling conventions:
- **Tailwind / DaisyUI:** Add classes like `class="w-5 h-5"`. Keep `stroke="currentColor"` and `fill="none"`.
- **Accessibility:** Add `aria-hidden="true"` for decorative icons alongside text, or `aria-label="..."` on the interactive parent element.

---

## Hard Rules

1. **No Hallucinated Paths:** You must never generate arbitrary `<path d="...">` coordinates for icons from memory. Always verify against the local `.svg` file.
2. **Read-Only Source:** The `tools/lucide-svg` repository is read-only. Never modify, rename, or delete files inside it.
3. **Preserve Geometry:** Maintain `viewBox="0 0 24 24"`, `fill="none"`, `stroke="currentColor"`, and `stroke-width="2"` (or custom CSS stroke width) unless an explicit filled variant is requested.


---

## Bank Ikon Fisik Terverifikasi (1.903 Ikon SVG)
Pustaka ikon fisik tersedia secara offline di dalam paket:
- Direktori Berkas SVG: ../../references/icons/svg/ (berisi tepat 1.903 ikon stroke-based berlisensi ISC).
- Lisensi & Atribusi: [eferences/icons/LICENSE](../../references/icons/LICENSE) (Lucide Project, ISC License).
