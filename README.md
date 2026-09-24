# Content Template

A repository of standardized, reproducible document and presentation templates implemented in Typst and Quarto. The project provides minimal, publication-ready layouts designed for academic research, mathematical exposition, and structured technical dissemination.

## Overview and Purpose

This project provides unified typographical structures, asset modularity, and deterministic compilation workflows across distinct academic communication formats:
- Academic research manuscripts and working papers.
- Structured technical carousels for research dissemination.
- Reproducible computational reports.
- Scripted technical presentation assets.

All modules enforce the separation of content and presentation, explicit asset organization, and minimal external dependencies.

## Modules

### Article (`article/`)

A formal academic manuscript template optimized for mathematical, economic, and philosophical papers. The layout targets ISO B5 formatting with STIX Two typography, modeled after the specifications of the *Journal of Mathematical Philosophy*.

- **Entry point:** `article/article.typ`
- **Layout definition:** `article/mathphil.typ`
- **Features:**
  - Chicago author-date citation and bibliography processing via `article/references.bib`.
  - Theorem-like environments (`theorem`, `proposition`, `lemma`, `definition`, `example`, `proof`) with shared numbering counters and Halmos termination symbols.
  - Modular mathematical formulations stored under `article/assets/equations/`.
  - Multi-panel figure arrangements using the `subpar` package with subfigure labeling and referencing.
- **Compilation:**
  ```sh
  typst compile article/article.typ article/output.pdf
  ```

### Carousel (`carousel/`)

A vertical slide deck template (1080 × 1350 pt) designed for structured academic dissemination and technical paper summaries across digital platforms.

- **Entry point:** `carousel/carousel.typ`
- **Layout definition:** `carousel/template.typ`
- **Theme specification:** `carousel/theme.yaml`
- **Features:**
  - Decoupled palette and typography configuration through an external YAML definition.
  - Predefined layout components including hook headers, category badges, content cards, theorem highlight boxes, and comparative evaluation tables.
  - Native Typst mathematical typesetting scaled for presentation environments.
- **Compilation:**
  ```sh
  typst compile carousel/carousel.typ carousel/output.pdf
  ```

## Work in Progress

The remaining sections in the repository are under active development:

- **`quarto-report/`**: Parameterized computational notebooks and reproducible data analysis reports managed via Quarto.
- **`short-video/`**: Frame assets, typographical overlays, and slide progressions designed for technical video presentation.
