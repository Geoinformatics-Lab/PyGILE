# PyGILE - Python GeoInformatics Lab Environment

<!-- When this version replaces Geoinformatics-Lab/PyGILE, change VuOn7 to Geoinformatics-Lab in the two links below. -->
[![Test notebooks](https://github.com/VuOn7/PyGILE/actions/workflows/test-notebooks.yml/badge.svg)](https://github.com/VuOn7/PyGILE/actions/workflows/test-notebooks.yml)

PyGILE makes it easy to learn and apply geospatial analysis with Python. It comes with pre-configured Jupyter notebooks and works on Windows, Mac, and Linux. Whether you're a student, teacher, or researcher, PyGILE provides everything you need to start working with geospatial data.

## Watch PyGILE in Action

**Want to learn Python for geospatial science but don't know where to begin?**

Start with this short introduction to setting up PyGILE and exploring its interactive Jupyter notebooks.

https://github.com/user-attachments/assets/f2a470af-96b3-43a3-b045-96d0c5ee30c6

Watch the full YouTube video for installation, setup and usage via the following link:

https://www.youtube.com/watch?v=aimkNzOxtaQ

## What is PyGILE?

PyGILE is an educational/application toolkit that includes:

-  Interactive Jupyter notebooks with GIS tutorials
-  Pre-installed geospatial Python libraries
-  Cross-platform support (Windows, Mac, Linux)
-  Learning materials for students and educators

## New: the PyGILE Course

A step-by-step course for absolute beginners, in [`PyGILE_course/`](PyGILE_course/README.md). Every step has theory, a worked example on Nepal data, and practice questions with worked solutions; the lessons are linked in order like a book. **Ready now: Part A · Python (10 lessons) and Part B · Vector GIS (11 lessons), with 564 practice questions.** Parts C (rasters), D (satellite imagery) and E (a landslide capstone) are in progress.

## Getting Started

Choose one of three ways. Options 1 and 2 install the same libraries; option 3 uses a ready-made Docker image.

### Option 1: Step-by-step installer (recommended for learners)

Learn how a Python environment is built, one group of packages at a time, using **Miniforge Prompt** (Windows) or **Terminal** (macOS/Linux).

#### Windows Users

1. Go to [`environments/windows/`](https://github.com/Geoinformatics-Lab/PyGILE/tree/main/environments/windows) folder
2. Watch the installation video: [`pyGILE_Installation.mp4`](https://github.com/Geoinformatics-Lab/PyGILE/blob/main/environments/windows/pyGILE_Installation.mp4)
3. Follow the step-by-step guide: [`environment_install_windows.pdf`](https://github.com/Geoinformatics-Lab/PyGILE/blob/main/environments/windows/environment_install_windows.pdf)

#### Linux Users

1. Go to [`environments/linux/`](https://github.com/Geoinformatics-Lab/PyGILE/tree/main/environments/linux) folder
2. Follow the README.md instructions

#### Mac Users

1. Go to [`environments/mac/`](https://github.com/Geoinformatics-Lab/PyGILE/tree/main/environments/mac) folder
2. Follow the README.md instructions

### Option 2: One command

Already comfortable with Miniforge? Open **Miniforge Prompt** (Windows) or **Terminal** (macOS/Linux) in the PyGILE folder and run:

```bash
mamba env create -f environment.yml
mamba activate pygile
jupyter lab
```

The [`environment.yml`](environment.yml) file is what the automatic notebook tests use. Supported: Windows 10/11, Linux, and macOS 11 or newer (Intel and Apple Silicon). (Using git? `git clone --depth 1 https://github.com/Geoinformatics-Lab/PyGILE` downloads much less.)

### Option 3: Docker, using the PyGILE-Plus image

The [PyGILE-Plus](https://github.com/Geoinformatics-Lab/PyGILE-Plus) Docker image contains every library the PyGILE notebooks use, so you can run PyGILE in it without installing anything else. Install Docker Desktop, open a terminal **inside the PyGILE folder**, and run:

```bash
docker pull dockagile/pygile-plus
docker run -it --name pygile -p 127.0.0.1:8888:8888 -v "${PWD}:/workspace/PyGILE" dockagile/pygile-plus
```

(Windows Command Prompt: replace `${PWD}` with `%cd%`.) Then open http://localhost:8888 and go to the `PyGILE` folder. Your work is saved in your own PyGILE folder.

Note: the image is large, because PyGILE-Plus also includes SAGA, GRASS, Orfeo ToolBox and deep-learning libraries. On a slow connection, Option 1 or 2 is quicker. The `127.0.0.1` part keeps Jupyter visible only on your own computer, which matters on shared Wi-Fi.

## How to Use PyGILE

Once you've completed the installation:

1. **Start Jupyter Lab** - This opens your web-based coding environment
2. **Open the course** - Go to [`PyGILE_course/`](PyGILE_course/README.md) and start with Lesson A1
3. **Start learning!** - Each lesson links to the next. The older raster and remote-sensing notebooks are in [`pyGILE_notebooks/`](pyGILE_notebooks) until the course replaces them

Files the lessons create are saved in `PyGILE_course/outputs/` (older notebooks use `pygis/temp/`). Git ignores both folders, so your outputs never get mixed into the course files.

## Need Help?

-  **Found a bug?** Create an issue on GitHub
-  **Have an idea?** We welcome contributions!
-  **Want to contribute?** Fork the project, make your changes, and submit a pull request

## Contributing

Fork → Make changes → Pull request

All contributions welcome!

## Credits

Enhanced from [mmann1123/pyGIS](https://github.com/mmann1123/pyGIS) by Geoinformatics Lab.

## Reference & Citation

Awasthi, B., Ninsawat, S., Raghavan, V., & Nemoto, T. (2025). PyGILE - Python GeoInformatics Lab Environment (1.0). Zenodo. https://doi.org/10.5281/zenodo.16144781

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16144781.svg)](https://doi.org/10.5281/zenodo.16144781)
