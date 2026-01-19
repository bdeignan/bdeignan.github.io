# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website for Brian Deignan built with [Quarto](https://quarto.org/) and deployed to GitHub Pages.

## Build Commands

```bash
# Preview site locally with live reload
quarto preview

# Build/render the site (outputs to docs/)
quarto render
```

## Architecture

- **Quarto website project** - Configuration in `_quarto.yml`
- **Output directory**: `docs/` (configured for GitHub Pages)
- **Source files**: `.qmd` files in root directory (`index.qmd`, `about.qmd`)
- **Theme**: United (Bootstrap-based)
- **Custom styles**: `styles.css`
- **Assets**: Images stored in `assets/`
- **Blog**: Hosted separately at https://bdeignan.github.io/blog/
