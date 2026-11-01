#!/bin/bash
# ============================================================
#   PYGILE ENVIRONMENT INSTALLER (macOS and Linux)
#   Installs the pygile environment step by step, in the same
#   groups as the Windows installer, so you can see what each
#   group of packages is for.
#
#   Prefer one command instead? From the PyGILE folder run:
#       mamba env create -f environment.yml
# ============================================================

LOGFILE="pygile_install.log"
ERRORLOG="pygile_errors.log"
ERROR_COUNT=0
STEP_COUNT=0

echo "Installation started at $(date)" > "$LOGFILE"
echo "Error summary" > "$ERRORLOG"

# ------------------------------------------------------------
# [1/7] Find mamba (faster) or conda from Miniforge
# ------------------------------------------------------------
echo "[1/7] Looking for Miniforge (mamba or conda)..."
if command -v mamba &> /dev/null; then
    INSTALLER="mamba"
elif command -v conda &> /dev/null; then
    INSTALLER="conda"
else
    echo "ERROR: neither mamba nor conda was found."
    echo "Install Miniforge first: https://github.com/conda-forge/miniforge"
    exit 1
fi
echo "      Using: $INSTALLER"

# Install one group of packages from conda-forge and report the result
install_group() {
    local step="$1" description="$2"; shift 2
    echo "[$step] Installing $description..."
    echo "      $*"
    if $INSTALLER install -n pygile --override-channels -c conda-forge "$@" -y >> "$LOGFILE" 2>&1; then
        echo "      Done: $description"
        STEP_COUNT=$((STEP_COUNT + 1))
    else
        echo "      WARNING: $description had problems (see $LOGFILE). Continuing."
        echo "FAILED: $description ($*)" >> "$ERRORLOG"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    fi
}

# ------------------------------------------------------------
# [2/7] Fresh environment with Python 3.12
# ------------------------------------------------------------
echo "[2/7] Creating a fresh pygile environment with Python 3.12..."
$INSTALLER env remove -n pygile -y &> /dev/null
if ! $INSTALLER create -n pygile --override-channels -c conda-forge python=3.12 -y >> "$LOGFILE" 2>&1; then
    echo "CRITICAL: could not create the environment. See $LOGFILE."
    exit 1
fi
echo "      Done: environment created"

# ------------------------------------------------------------
# [3/7] to [7/7] Package groups (same groups as the Windows installer)
# ------------------------------------------------------------
install_group "3/7" "foundation stack (NumPy, Pandas, SciPy, Matplotlib, scikit-learn)" \
    numpy pandas scipy matplotlib scikit-learn

install_group "4/7" "geospatial core (GDAL, PROJ, GEOS, Shapely, PyProj, GeoPandas)" \
    gdal proj geos libspatialindex fiona pyogrio shapely pyproj geopandas

install_group "5/7" "raster and data stack (Rasterio, Xarray, rioxarray, Dask, NetCDF)" \
    rasterio xarray rioxarray dask dask-geopandas netcdf4 h5py zarr tifffile

install_group "6/7" "JupyterLab and maps (Folium, Contextily, mapclassify, scale bars)" \
    jupyterlab ipykernel ipywidgets plotly folium contextily mapclassify matplotlib-scalebar

install_group "7/7" "specialised tools (OSMnx, rasterstats, STAC, kriging)" \
    osmnx rasterstats xarray-spatial pystac pystac-client stackstac odc-stac planetary-computer \
    pykrige

# ------------------------------------------------------------
# Verification
# ------------------------------------------------------------
echo ""
echo "Checking that the main libraries work..."
if $INSTALLER run -n pygile python -c "import numpy, pandas, geopandas, rasterio, rioxarray, xarray, matplotlib, osmnx; print('ok')" 2>> "$LOGFILE" | grep -q ok; then
    echo "SUCCESS: the pygile environment is ready ($STEP_COUNT groups installed, $ERROR_COUNT problems)."
else
    echo "WARNING: a core library failed to import. See $LOGFILE and $ERRORLOG."
fi

echo ""
echo "============================================================"
echo "  HOW TO START WORKING"
echo "============================================================"
echo "  $INSTALLER activate pygile"
echo "  jupyter lab"
echo ""
echo "Logs: $LOGFILE   Errors: $ERRORLOG"
