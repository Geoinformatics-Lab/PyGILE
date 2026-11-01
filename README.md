# PyGILE - Python GeoInformatics Lab Environment

[![Test notebooks](https://github.com/Geoinformatics-Lab/PyGILE/actions/workflows/test-notebooks.yml/badge.svg)](https://github.com/Geoinformatics-Lab/PyGILE/actions/workflows/test-notebooks.yml)

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

## Getting Started

### Option 1: Install on Your Computer (Recommended)

PyGILE uses **one environment file, [`environment.yml`](environment.yml), on Windows, macOS and Linux**, so every learner gets the same libraries. Every notebook is tested against it automatically.

1. Install [Miniforge](https://github.com/conda-forge/miniforge) (free, about 5 minutes).
2. Download PyGILE: click the green **Code** button → **Download ZIP**, and unzip it. (Using git? `git clone --depth 1 https://github.com/Geoinformatics-Lab/PyGILE` downloads much less.)
3. Open **Miniforge Prompt** (Windows) or **Terminal** (macOS/Linux), go into the PyGILE folder, and run:

   ```bash
   mamba env create -f environment.yml
   ```

4. Start working:

   ```bash
   mamba activate pygile
   jupyter lab
   ```

Supported: Windows 10/11, Linux, and macOS 11 or newer (Intel and Apple Silicon).

Prefer step-by-step guides with screenshots? Use the folder for your system:

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

### Option 2: Docker

For computers where you cannot install software directly, see the [`docker/`](https://github.com/Geoinformatics-Lab/PyGILE/tree/main/docker) folder.

## How to Use PyGILE

Once you've completed the installation:

1. **Start Jupyter Lab** - This opens your web-based coding environment
2. **Open the tutorials** - Browse to the [`pyGILE_notebooks/`](https://github.com/Geoinformatics-Lab/PyGILE/tree/main/pyGILE_notebooks) folder
3. **Start learning!** - Work through the interactive notebooks at your own pace

Files the notebooks create are saved in `pygis/temp/`. Git ignores that folder, so your outputs never get mixed into the course files.

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
