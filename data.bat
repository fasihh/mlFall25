@echo off
setlocal enabledelayedexpansion

REM Get command line arguments
set dataset=%1
set lab=%2

if "%dataset%"=="" (
  echo Usage: data.bat dataset_name lab_number
  echo Example: data.bat venky73/spam-mails-dataset 11
  exit /b 1
)

if "%lab%"=="" (
  echo Usage: data.bat dataset_name lab_number
  echo Example: data.bat venky73/spam-mails-dataset 11
  exit /b 1
)

REM Create directory if it doesn't exist
if not exist ".\Labs\data\lab%lab%" mkdir ".\Labs\data\lab%lab%"

REM Download dataset using Kaggle CLI
kaggle datasets download "%dataset%" -p ".\Labs\data\lab%lab%" --unzip

REM Clean up any remaining zip files
for %%F in (".\Labs\data\lab%lab%\*.zip") do del "%%F"

echo Dataset downloaded and extracted to .\Labs\data\lab%lab%
