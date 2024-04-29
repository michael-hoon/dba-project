#!/bin/bash

# Navigate to 'Code' directory containing Jupyter notebooks
cd "$(dirname "$0")/Code"

# Create virtual environment
python3 -m venv sutd_eda 

# Activate virtual environment
source sutd_eda/bin/activate

# Navigate to the main folder containing requirements.txt
cd "$(dirname "$0")"

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Navigate back to 'Code' directory
cd "$(dirname "$0")/Code"

# Find all Jupyter notebook files in the 'Code' folder
for i in *.ipynb; do
    echo "Running notebook: $i"
    jupyter nbconvert --execute "$i" --to notebook --output "$i" --ExecutePreprocessor.allow_errors=True --ExecutePreprocessor.timeout=-1
done

# Pause to see output
read -p "Press any key to continue..."
