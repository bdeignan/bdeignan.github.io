# Drafts

Work-in-progress notebooks go here. Files in `_drafts/` are ignored by Quarto's blog listing.

## Quick Start

```bash
# Start Jupyter
uv run jupyter lab _drafts/

# Preview site (live reload)
uv run quarto preview
```

## Creating a New Post

### 1. Create notebook with naming convention

```
YYYY-MM-DD-slug-title.ipynb
```

Example: `2026-01-19-building-a-brutalist-blog.ipynb`

### 2. First cell MUST be raw YAML frontmatter

Press `R` in command mode to convert a cell to "Raw" format. Add:

```yaml
---
title: "Your Post Title"
description: "A brief description for the listing"
date: "2026-01-19"
categories: [python, data-science]
---
```

### 3. Write your post

- **Markdown cells**: Narrative, headings, explanations
- **Code cells**: Python that executes and shows output
- Save frequently — `quarto preview` will live-reload

### 4. Add packages on the fly (optional)

In a code cell:
```python
!uv add seaborn scikit-learn
```

This updates `pyproject.toml` and installs immediately.

### 5. Publish when ready

```bash
# Create post folder with date prefix
mkdir posts/2026-01-19-your-post-slug

# Move notebook as index.ipynb
mv _drafts/your-notebook.ipynb posts/2026-01-19-your-post-slug/index.ipynb

# Render and verify
uv run quarto render
uv run quarto preview

# Commit
git add -A && git commit -m "Add post: Your Post Title"
```

## Tips

- **Draft mode**: Add `draft: true` to frontmatter to hide from listing while still in posts/
- **Images**: Put images in the same folder as the notebook, reference as `![](image.png)`
- **Freeze**: Outputs are cached in `_freeze/` — delete that folder to re-run all code
