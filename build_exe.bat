@echo off
REM Installe les dépendances (uniquement sur la machine de build)
python -m pip install --upgrade pip
pip install -r requirements.txt

REM Construit l'exécutable autonome
pyinstaller --noconsole --onefile --name "AnalyseMvtSortie" --add-data "index_toggle_theme.html;." app.py

echo.
echo Build terminé. Le fichier se trouve dans le dossier "dist".
pause
