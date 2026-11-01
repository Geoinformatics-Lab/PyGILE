# The PyGILE Course

A complete, hands-on course in Python and geospatial science for **absolute beginners**: no coding and no GIS experience needed. Every example uses data from Nepal and the Himalaya.

> **Status:** Part A (Python) and Part B (vector GIS) are ready: 21 lessons and 564 practice questions. Parts C to E are being written. The older raster and remote-sensing notebooks in `../pyGILE_notebooks/` stay available until Parts C and D replace them.

Every lesson has a navigation bar at the top and bottom, so you can move through the course like a book: **← Previous · Course home · Next →**.

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

## Part B · Vector GIS: the map of Nepal

| Lesson | You will learn | Questions |
| --- | --- | --- |
| [B1 · Maps, coordinates, latitude and longitude](B_Vector/B01_Maps_and_coordinates.ipynb) | What a map is, latitude and longitude, degrees to km, map scale | 25 |
| [B2 · Points, lines and polygons](B_Vector/B02_Points_lines_and_polygons.ipynb) | Shapely geometries: the Everest trek as a line, boxes, distances | 25 |
| [B3 · GeoDataFrames and file formats](B_Vector/B03_GeoDataFrames_and_file_formats.ipynb) | Districts as a table, points from CSV, GeoPackage, Shapefile, GeoJSON | 25 |
| [B4 · Coordinate reference systems](B_Vector/B04_Coordinate_reference_systems.ipynb) | EPSG codes, UTM 45N, `set_crs` vs `to_crs`, areas in km² | 28 |
| [B5 · Selecting by attribute](B_Vector/B05_Selecting_by_attribute.ipynb) | Filtering districts, `.isin`, `.str`, boxes with `.cx` | 25 |
| [B6 · Joins and dissolve](B_Vector/B06_Joins_and_dissolve.ipynb) | Joining tables, fixing name mismatches, districts into provinces | 28 |
| [B7 · Clip and select by location](B_Vector/B07_Clip_and_select_by_location.ipynb) | Spatial predicates, neighbours, clipping | 25 |
| [B8 · Buffers and nearest features](B_Vector/B08_Buffers_and_nearest_features.ipynb) | Buffers in metres, nearest headquarters to every landslide | 25 |
| [B9 · Spatial joins and overlays](B_Vector/B09_Spatial_joins_and_overlays.ipynb) | Landslides per district, intersection, union, difference | 28 |
| [B10 · Counting points and density maps](B_Vector/B10_Counting_points_and_density_maps.ipynb) | Grids, hexagons, density, honest map classification | 28 |
| [B11 · Making a beautiful map](B_Vector/B11_Making_a_beautiful_map.ipynb) | Layers, colours, labels, scale bar, north arrow, inset map | 27 |

**Part B total: 289 questions with worked solutions.**

## Coming next

- **Part C · Rasters:** elevation models of Nepal, clipping, reprojecting, slope, aspect and hillshade, zonal statistics, interpolation.
- **Part D · Satellite imagery:** Sentinel-2 through STAC, spectral indices, change detection, classification.
- **Part E · Capstone:** a landslide susceptibility model, leading on to PyGILE-Plus.

## Folders

| Folder | Contents |
| --- | --- |
| `A_Python/`, `B_Vector/` | The lessons |
| `data/` | Small datasets used by the lessons, with sources and licences (see `data/README.md`) |
| `images/` | Concept diagrams used by the lessons (see `images/README.md`) |
| `outputs/` | Files the lessons write. Created when you run them and ignored by git |
| `tools/` | For course authors: `qa.py` checks a lesson and all its solutions, `add_nav.py` refreshes the navigation bars, `lessonkit.py` builds lessons in the standard format |
| `STYLE_GUIDE.md` | How lessons are written |

## Before you start

Install the `pygile` environment (see the main [README](../README.md)), open JupyterLab, and start with **A1**. In each notebook, use **Kernel → Restart Kernel and Run All Cells** if results ever look strange.
