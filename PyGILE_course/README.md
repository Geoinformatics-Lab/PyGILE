# The PyGILE Course

A complete, hands-on course in Python and geospatial science for **absolute beginners**: no coding and no GIS experience needed. Every example uses data from Nepal and the Himalaya.

> **Status:** Part A (Python) is ready. Parts B to E are being written. The original PyGILE notebooks in `pyGILE_notebooks/` stay available until the new course is complete.

## How every lesson works

Each lesson is a Jupyter notebook made of short **steps**. Every step has:

1. **Theory:** one idea, explained in plain English.
2. **Example:** code you run, on Nepal data.
3. **Practice:** three questions that get harder:
   - **Q1** needs one line of code,
   - **Q2** needs two lines,
   - **Q3** needs about three lines.

Type your answer in the empty cell under each question, run it, then click **Show solution** to check. Each lesson also shows a real error message and how to read it, ends with longer **mixed review** exercises, and finishes with a recap and a glossary of new words.

**The rule that makes it work:** try every question before you open the solution. Being stuck for a few minutes is not failure; it is how the skill is built.

## Part A · Python for geoscientists

| Lesson | You will learn | Questions |
| --- | --- | --- |
| [A1 · Python as your calculator](A_Python/A01_Python_as_your_calculator.ipynb) | Running code, arithmetic, variables, your first error | 25 |
| [A2 · Numbers and text](A_Python/A02_Numbers_and_text.ipynb) | Types, converting, comparisons, strings, f-strings | 28 |
| [A3 · Lists and loops](A_Python/A03_Lists_and_loops.ipynb) | Lists, indexing, slicing, `for` loops, building results | 28 |
| [A4 · Dictionaries and decisions](A_Python/A04_Dictionaries_and_decisions.ipynb) | Dictionaries, `if`/`elif`/`else`, tables of records | 28 |
| [A5 · Functions](A_Python/A05_Functions.ipynb) | Writing your own tools, `return`, the `math` module, slopes | 28 |
| [A6 · Errors are friends](A_Python/A06_Errors_are_friends.ipynb) | Reading tracebacks, the common errors, debugging, `try`/`except` | 25 |
| [A7 · Files, folders and paths](A_Python/A07_Files_folders_and_paths.ipynb) | `pathlib`, reading and writing text and CSV files | 28 |
| [A8 · NumPy arrays](A_Python/A08_NumPy_arrays.ipynb) | Grids of numbers, masks, a first look at slope | 29 |
| [A9 · Pandas tables](A_Python/A09_Pandas_tables.ipynb) | Reading, filtering, grouping and saving tables | 28 |
| [A10 · Plotting with Matplotlib](A_Python/A10_Plotting_with_Matplotlib.ipynb) | Line, bar and scatter charts; honest, readable figures | 28 |

**Part A total: 275 questions with worked solutions.**

## Coming next

- **Part B · Vector GIS:** maps and coordinates, points/lines/polygons, file formats, coordinate reference systems, joins, buffers, overlays, and a publication-quality map.
- **Part C · Rasters:** elevation models, clipping, reprojecting, slope, aspect and hillshade, zonal statistics, interpolation.
- **Part D · Satellite imagery:** Sentinel-2 through STAC, spectral indices, change detection, classification.
- **Part E · Capstone:** a landslide susceptibility model, leading on to PyGILE-Plus.

## Folders

| Folder | Contents |
| --- | --- |
| `A_Python/` | Part A lessons |
| `data/` | Small datasets used by the lessons (see `data/README.md`) |
| `outputs/` | Files the lessons write. Created when you run them and ignored by git |
| `STYLE_GUIDE.md` | How lessons are written, for contributors |

## Before you start

Install the `pygile` environment (see the main [README](../README.md)), open JupyterLab, and start with **A1**. In each notebook, use **Kernel → Restart Kernel and Run All Cells** if results ever look strange.
