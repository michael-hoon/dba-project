# Automated Exploratory Data Analysis (Auto-EDA)

This project automates the exploratory data analysis (EDA) process for a given Excel file (.xlsx). It converts every sheet found in the excel file into separate (.csv) files, and stores them in the `Raw_Sheets` folder. Then, the `eda_process` notebook is executed, conducting automated data cleaning and merging of all the csv files into the `Cleaned_Sheets` folder. Then, `fuzzy_matching` notebook will run and sorts the location data into the correct categories by a Levenshtein Distance metric. 

The final sheet for data visualisation via Power BI dashboard is placed into the `Analysis_Sheets` folder, which is to be automatically parsed via a Task Scheduler into Power BI at regular intervals. The user is then able to continuously see updates on the Power BI dashboard every time the excel file is updated with new data.

Note: This currently only works with one excel file in the main `Data` folder. **Ensure that it is placed in the folder before running the script.**

## Usage Instructions

### Windows

1. Ensure you have Python installed on your system. If not, download and install it from [python.org](https://www.python.org/).
2. Open Command Prompt.
3. Navigate to the directory containing this file, and ensure that the dataset (in .xlsx format) is placed in the `Data` folder.
5. Run the batch file by typing `run.bat` and pressing Enter.
6. The script will automatically create a virtual environment, install dependencies, find all Jupyter notebook files in the 'Code' folder, and execute them all.

### Linux/macOS

1. Ensure you have Python installed on your system. If not, install it using any package manager (e.g., apt, brew) of your choice.
2. Open Terminal.
3. Navigate to the directory containing this file, and ensure that the dataset (in .xlsx format) is placed in the `Data` folder.
4. Run the shell script by typing `bash run.sh` and pressing Enter.
5. The script will automatically create a virtual environment, install dependencies, find all Jupyter notebook files in the 'Code' folder, and execute them all.

## Requirements

- Python 3.x
- Jupyter Notebook
- Dependencies listed in 'requirements.txt'
