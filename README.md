# Shubham Pande — Academic Website

Your personal academic website, live at:
**https://shubhampande-iitbhu.github.io**

This file is your complete guide to keeping the site up to date.
No web development experience required — if you can edit a text file, you can manage this site.

---

## Daily Workflow

After you make any changes to the website files, open a terminal in this folder and run these two commands in order:

**Step 1 — Preview locally before publishing:**
```
bash preview.sh
```
This starts a private copy of your site at http://localhost:4000 on your own computer so you can check how things look before they go live. Press `Ctrl+C` in the terminal to stop the preview when you are done.

**Step 2 — Publish your changes to the web:**
```
bash publish.sh
```
This saves your changes and sends them to GitHub. Your live website updates automatically within 1–2 minutes. The script will ask you to type a short description of what you changed (e.g. "added IEDM 2025 paper").

---

## Section 1: How to Update Each Part of the Website

---

### 1. About Page — bio, research interests, recent news

**File to edit:** `_pages/about.md`

Open this file in any text editor (TextEdit on Mac, Notepad on Windows, or any code editor). It is written in Markdown — plain text with a few simple formatting marks (see Glossary at the bottom of this file for what Markdown means).

**To update your bio paragraph:**
Find the paragraph that begins "I am an Assistant Professor…" just below the first `---` divider. Edit it as you would a Word document. The text inside `[square brackets](URL)` creates a hyperlink — keep both the brackets and the URL intact if you want the link to stay.

**To add a news item:**
Find the `## Recent News` section near the bottom of the file. Each item looks like:
```
- **[Month Year]** Your news text here.
```
Add a new line at the very top of the list (so the most recent news appears first). For example:
```
- **[Jun 2026]** Paper accepted at IEEE IEDM 2026.
```

**To update your research interests:**
Find the `## Research Interests` section. Each interest is a bullet point starting with `-`. Add, remove, or reword lines freely.

---

### 2. Publications — adding papers, adding DOI links

**Folder:** `_publications/`

Each paper has its own file in this folder. Files are named by date and a short version of the title: `YYYY-MM-DD-short-title.md`.

**To add a new journal paper:**
1. Copy any existing journal paper file — for example, copy `2023-01-01-thermal-resistance-reram-compact-model.md`
2. Rename the copy using the paper's date and a short title, e.g. `2026-01-15-my-new-journal-paper.md`
3. Open the new file and fill in the fields between the `---` markers at the top:

```
---
title: "Full Title of Your Paper"
collection: publications
category: manuscripts
permalink: /publication/2026-01-15-my-new-journal-paper
date: 2026-01-15
venue: "Journal Name, Volume Number"
paperurl:
excerpt: "Author One, Author Two, et al."
---

Author One, Author Two, et al.

*Journal Name*, Vol. X, Year
```

- Use `category: manuscripts` for journal articles
- Leave `paperurl:` empty if the paper is not online yet — no download button will appear

**To add a new conference paper:**
Same steps as above, but change one line:
```
category: conferences
```

**To add a DOI or paper link once it is published:**
Open the paper's file and fill in the `paperurl:` field:
```
paperurl: "https://doi.org/10.xxxx/yourpaper"
```
Save the file and run `publish.sh`. A "Download Paper" button will appear on the publications page automatically.

---

### 3. Research Page — areas, descriptions, figures

**File to edit:** `_pages/research.md`

**To add a new research area:**
Add a heading and description anywhere in the file. To match the existing style, separate sections with a horizontal rule:
```
---

## Name of New Research Area

Write your description here. You can write multiple paragraphs.
Leave a blank line between paragraphs.
```

**To add or replace a figure:**
1. Save your image as a `.png` or `.jpg` file (not `.pdf` — PDFs cannot display as images)
2. Copy the image file into the `images/` folder
3. In `research.md`, type this on its own line where you want the image to appear:
   ```
   ![](/images/your-image-filename.png)
   ```
   Replace `your-image-filename.png` with the actual name of your file.

The line `<!-- TODO: Replace with actual .png or .jpg image -->` marks a spot that is waiting for a real image — replace that whole comment line with the image tag above when you have the file ready.

---

### 4. Teaching Page — courses each semester

**File to edit:** `_pages/teaching.md`

Add a new entry for each course you teach. A typical entry looks like this:

```
## EE 201: Analog Electronics (Autumn 2026)

Undergraduate course, Department of Electronics Engineering, IIT (BHU) Varanasi.

Brief description of the course content.
```

Add newer semesters at the top of the file so the most recent courses appear first on the page.

---

### 5. CV

**File to replace:** `files/cv.pdf`

Simply replace this file with your updated PDF. Keep the filename exactly as `cv.pdf` — the CV link on your website points to this exact name. No other changes are needed anywhere.

---

### 6. Profile Photo

**File to replace:** `images/profile.jpg`

Replace this file with your updated photo. Keep the filename exactly as `profile.jpg`. The photo should ideally be square (or close to square) and at least 300×300 pixels for good quality.

---

### 7. Sidebar Links — email, Google Scholar, LinkedIn

**File to edit:** `_config.yml`

Open this file and find the section that begins with `author:` near the top. The fields you are most likely to update are:

| What to change | Field name | Example value |
|---|---|---|
| Email address | `email` | `"shubhampande142@gmail.com"` |
| Short bio under your photo | `bio` | `"Assistant Professor, IIT (BHU)"` |
| Google Scholar link | `googlescholar` | `"https://scholar.google.com/citations?user=..."` |
| LinkedIn username | `linkedin` | `"shubham-pande"` |
| Your location | `location` | `"Varanasi, India"` |

To hide any link, leave the field blank (nothing after the colon):
```
linkedin:
```
To show a link, add your username or full URL after the colon (inside quotes).

After editing `_config.yml`, you must stop and restart `preview.sh` for the changes to appear in the local preview. On the live site, they appear after running `publish.sh`.

---

## Section 2: Folder Structure

```
shubhampande.github.io-master/
│
├── _config.yml              ✅ SAFE TO EDIT
│                               Site-wide settings: your name, email,
│                               sidebar links, Google Scholar, LinkedIn
│
├── _pages/                  ✅ SAFE TO EDIT
│   ├── about.md                 Homepage — bio, research interests, news
│   ├── research.md              Research areas and figures
│   ├── teaching.md              Teaching history
│   ├── cv.md                    CV page (links to files/cv.pdf)
│   └── publications.html        Publications listing — auto-generated,
│                                do not edit manually
│
├── _publications/           ✅ SAFE TO EDIT
│   └── YYYY-MM-DD-title.md      One file per paper — add a new file
│                                for each new publication
│
├── images/                  ✅ SAFE TO EDIT
│   ├── profile.jpg              Your profile photo — replace to update
│   └── *.png / *.jpg            Research figures used in your pages
│
├── files/                   ✅ SAFE TO EDIT
│   └── cv.pdf                   Your CV — replace to update
│
├── _data/
│   └── navigation.yml       ✅ SAFE TO EDIT
│                               Controls which pages appear in the top
│                               navigation bar and in what order
│
├── publish.sh               ✅ Run this to send changes to the live site
├── preview.sh               ✅ Run this to preview the site on your computer
│
├── _includes/               ⚠️  DO NOT EDIT
│                               Internal template pieces — the sidebar,
│                               nav bar, and publication card layout
│
├── _layouts/                ⚠️  DO NOT EDIT
│                               Page layout templates used by Jekyll
│
├── assets/                  ⚠️  DO NOT EDIT
│                               CSS stylesheets and JavaScript files
│
├── _sass/                   ⚠️  DO NOT EDIT
│                               Stylesheet source files
│
├── vendor/                  ⚠️  DO NOT EDIT
│                               Jekyll engine and all its dependencies
│                               (installed automatically)
│
├── _site/                   ⚠️  DO NOT EDIT
│                               The finished HTML website that Jekyll
│                               generates — rebuilt automatically every
│                               time you run preview.sh or publish.sh
│
├── _talks/                  ⚠️  UNUSED — AcademicPages template files,
│   └── *.md                     not shown on your site
│
├── _portfolio/              ⚠️  UNUSED — AcademicPages template files,
│   └── *.md                     not shown on your site
│
└── _posts/                  ⚠️  UNUSED — AcademicPages blog post templates,
    └── *.md                     not shown on your site
```

---

## Section 3: Glossary

**Jekyll** — The software that reads your `.md` files and turns them into a proper website with pages, styles, and navigation. It runs automatically on GitHub's servers every time you push a change, so you only need it installed locally if you want to preview the site before publishing.

**GitHub Pages** — A free service from GitHub that hosts your website and makes it available at your public URL (`shubhampande-iitbhu.github.io`). Every time you run `publish.sh`, GitHub Pages rebuilds and republishes your site automatically — usually within 1–2 minutes.

**Markdown** — A simple way of formatting plain text using common characters. For example: `**bold**` makes text **bold**, `## Heading` creates a large section heading, and `- item` makes a bullet point. All the `.md` files on this site use Markdown.

**Front matter** — The block of settings at the very top of every `.md` file, enclosed between two `---` lines. It tells Jekyll things like the page title, the layout to use, and the date. You can safely edit the values (the part after the `:`), but do not remove the field names or the `---` lines themselves.

**bundle exec jekyll serve** — The command that builds a local preview of your website and lets you view it in a browser at http://localhost:4000. The `preview.sh` script runs this for you so you never have to type it manually.

**git commit** — A saved snapshot of your changes with a short description. Think of it like hitting "Save" in a document editor, except the history of every save is kept permanently. The `publish.sh` script creates a commit for you and asks you what to write in the description.

**git push** — The act of sending your saved commits from your computer to GitHub so the live website is updated. The `publish.sh` script does this for you automatically after committing.

**branch** — A separate, isolated copy of your website's files where you can make experimental changes without affecting what visitors see. Your live site runs from a branch called `main`. You do not need to think about branches for routine day-to-day updates.
