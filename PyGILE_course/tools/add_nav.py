"""Add or refresh the navigation bar at the top and bottom of every lesson.

The course order is the alphabetical order of the lesson files inside the part
folders (A_Python, B_Vector, ...). Run this after adding, renaming or rebuilding
a lesson, from anywhere:

    python PyGILE_course/tools/add_nav.py
"""
from pathlib import Path
import nbformat

COURSE = Path(__file__).resolve().parents[1]
MARK = "<!-- pygile-nav -->"
PARTS = sorted(p for p in COURSE.iterdir() if p.is_dir() and p.name[:2] in
               {"A_", "B_", "C_", "D_", "E_"})

lessons = [nb for part in PARTS for nb in sorted(part.glob("[A-E][0-9][0-9]_*.ipynb"))]


def title(path):
    first = nbformat.read(path, as_version=4).cells[0].source.splitlines()[0]
    return first.lstrip("# ").strip()


def link(src, dst):
    rel = Path("..") / dst.parent.name / dst.name if src.parent != dst.parent else Path(dst.name)
    return f"[{title(dst)}]({rel.as_posix()})"


for i, path in enumerate(lessons):
    nb = nbformat.read(path, as_version=4)
    nb.cells = [c for c in nb.cells if MARK not in c.source]   # remove old bars
    prev_txt = f"← Previous: {link(path, lessons[i - 1])}" if i > 0 else "← You are at the start"
    next_txt = f"Next: {link(path, lessons[i + 1])} →" if i < len(lessons) - 1 else "You have reached the end of the course"
    bar = (f"{MARK}\n**PyGILE Course** · lesson {i + 1} of {len(lessons)} · "
           f"[Course home](../README.md)  \n{prev_txt} · {next_txt}")
    nb.cells.insert(1, nbformat.v4.new_markdown_cell(bar))
    nb.cells.append(nbformat.v4.new_markdown_cell(bar))
    nbformat.write(nb, path)
    print(f"{i + 1:2d}. {path.parent.name}/{path.name}")
