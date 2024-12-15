./venv/Scripts/activate.ps1

# Get the current working directory
$originalDir = Get-Location
$newDir = Join-Path -Path $originalDir -ChildPath "the_genesis_engine" -AdditionalChildPath ("components", "MD.Launcher")

# Add the project's root directory to PYTHONPATH
$env:PYTHONPATH = "$newDir" + ";" + $env:PYTHONPATH

py "./the_genesis_engine\components\MD.Launcher\md_launcher\components\launcher\launch.py" "./launch_config.json"
