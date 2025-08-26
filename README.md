# CV (LaTeX)

This repository contains an ATS-friendly, single-column LaTeX CV suitable for software engineering roles. The content is sourced from `INFO.md` and reproduced in `cv.tex`.

## Files
- `cv.tex` — The LaTeX source for the CV.
- `Makefile` — Convenience targets to build and clean the PDF.
- `INFO.md` — Human-editable source of truth for your information.

## Build

Requirements: a TeX distribution (TeX Live recommended) with `pdflatex` available in PATH.

- Build the PDF:
  - `make`
- Clean artifacts:
  - `make clean`

Output: `cv.pdf`

## Notes
- Layout is intentionally simple and ATS-friendly (one column, standard fonts, no icons or special packages) to ensure parsing by HR systems and readability by hiring managers.
- Edit `INFO.md` first; mirror changes into `cv.tex` to keep them in sync.
- For role-specific tailoring, duplicate `cv.tex` (e.g., `cv-ml.tex`) and trim sections accordingly.

## Customization
- Header links are defined as commands at the top of `cv.tex` (Name, Email, Website, GitHub, LinkedIn).
- Sections are standard: Profile, Experience, Selected Projects, Education, Skills, Languages, Interests.

## Troubleshooting
- If the build fails, run `pdflatex cv.tex` and check the console output for the first error.
- Ensure UTF-8 encoding is preserved when editing files.
