#!/usr/bin/env bash
set -e
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt
# Sur macOS/Linux, le séparateur d'--add-data est ":"
pyinstaller --noconsole --onefile --name "AnalyseMvtSortie" --add-data "index_toggle_theme.html:." app.py
echo "Build terminé. L'exe/ binaire est dans le dossier dist/"
