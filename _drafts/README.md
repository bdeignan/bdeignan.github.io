# Drafts

Put work-in-progress notebooks here. Files in `_drafts/` are ignored by Quarto's blog listing.

When ready to publish, move to `posts/YYYY-MM-DD-title/` folder.

## Workflow

```bash
# Start a new draft
mkdir _drafts/my-new-post
jupyter lab _drafts/my-new-post/index.ipynb

# Or use quarto preview while editing
uv run quarto preview

# When ready, move to posts
mv _drafts/my-new-post posts/2026-01-20-my-new-post
```
