#!/bin/bash
# PyGILE installer for macOS and Linux.
# Creates the "pygile" environment from the single environment.yml
# at the top of the repository, the same file used on every system.

set -e

# Find the repository's environment.yml, two folders above this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/../../environment.yml"

if [ ! -f "$ENV_FILE" ]; then
    echo "Error: cannot find environment.yml at $ENV_FILE"
    echo "Run this script from inside the PyGILE folder you downloaded."
    exit 1
fi

# Use mamba if available (faster), otherwise conda
if command -v mamba &> /dev/null; then
    INSTALLER="mamba"
elif command -v conda &> /dev/null; then
    INSTALLER="conda"
else
    echo "Error: neither mamba nor conda was found. Install Miniforge first (see README.md)."
    exit 1
fi

echo "Using $INSTALLER to create the pygile environment."
echo "This downloads about 1 GB the first time and can take 5-15 minutes."

# Remove an old pygile environment if there is one, then create a fresh one
$INSTALLER env remove -n pygile -y &> /dev/null || true
$INSTALLER env create -n pygile -f "$ENV_FILE"

# Check that the main libraries import
if $INSTALLER run -n pygile python -c "import geopandas, rasterio, rioxarray, matplotlib, pandas, numpy; print('ok')" | grep -q ok; then
    echo ""
    echo "SUCCESS: the pygile environment is ready."
    echo "Next: run   $INSTALLER activate pygile   then   jupyter lab"
else
    echo "WARNING: the environment was created, but a library failed to import."
    echo "Please open an issue on GitHub and paste the output above."
    exit 1
fi
