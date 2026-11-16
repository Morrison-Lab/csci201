# Contributing to the CSCI 201 course logistics site

This repository holds the logistics for CSCI 201, discrete math and functional programming, as taught by Ezra Morrison at Western Washington University:
the syllabus, the calendar, the prerequisite self-test and the Canvas calendar sync.
The lecture notes live in [`Morrison-Lab/mcs`](https://github.com/Morrison-Lab/mcs).
Style and conventions live in [CLAUDE.md](CLAUDE.md) and [`.github/copilot-instructions.md`](.github/copilot-instructions.md);
this file covers the workflow.

This repository and its site are public,
so never commit an answer to anything that is graded, or any student record.

## Workflow

1. Clone with the submodules, or fetch them after cloning:

   ```bash
   git submodule update --init --recursive
   ```

2. Create a branch for your work:

   ```bash
   git checkout -b <topic>
   ```

3. Edit or add pages under `chapters/`, with a page's units in `chapters/_subfiles/<page>/`.
   Add each new page to both the navbar and the sidebar in `_quarto-website.yml`, in the same order.

4. Preview your changes locally:

   ```bash
   quarto preview
   ```

   or render just the page you changed:

   ```bash
   quarto render chapters/<page>.qmd --to html
   ```

5. Commit, push, and open a pull request.
   Each pull request gets a preview build, and the checks below.

## Checks

- **Spelling**: add legitimate words to `inst/WORDLIST` rather than disabling the check.
- **Links**: an automated link checker runs on every pull request and weekly.
  Prefer HTTPS and permanent links, and fix a broken link rather than excluding it in `lychee.toml`.
  If you have checked every link in your pull request by hand, the **`links checked by hand`** label skips the check for that pull request.
- **Bibliography DOIs** and **non-standard characters**: fix the flagged source rather than relaxing the check.

## Images

Put figures in `images/` and reference them from a figure div:

```markdown
::: {#fig-label}
![Alt text describing the figure](images/your-image.png)

Caption text.
:::
```

## Citations

Add BibTeX entries to `references.bib` and cite them in the text as `@key`.
Cite only sources you have read; never invent a citation.

## Questions

Open an issue in the repository.
