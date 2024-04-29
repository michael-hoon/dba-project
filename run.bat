@echo off

REM Navigate to 'Code' directory containing Jupyter notebooks
cd /d "%~dp0\Code"

REM Create virtual environment
python -m venv sutd_eda 

REM Activate virtual environment
call sutd_eda\Scripts\activate

REM Navigate to the main folder containing requirements.txt
cd /d "%~dp0"

REM Install dependencies from requirements.txt
pip install -r requirements.txt

REM Navigate back to 'Code' directory
cd /d "%~dp0\Code"

REM Find all Jupyter notebook files in the 'Code' folder
for %%i in (*.ipynb) do (
    echo Running notebook: %%i
    call jupyter nbconvert --execute "%%i" --to notebook --output "%%i" --ExecutePreprocessor.allow_errors=True --ExecutePreprocessor.timeout=-1
)

REM Pause to see output
pause