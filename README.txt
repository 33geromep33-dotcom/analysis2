===============================
Application bureau autonome (.exe)
===============================

Ce dossier contient tout le nécessaire pour générer un exécutable Windows
qui ne nécessite PAS Python pour être utilisé par l'utilisateur final.
(Seule la machine de build a besoin de Python pour compiler.)

Contenu :
- app.py                  : lance une fenêtre native et charge l'interface
- index_toggle_theme.html : votre interface (mode clair/sombre inclus)
- requirements.txt        : dépendances pour la compilation
- build_exe.bat           : script de build Windows (double-cliquez)
- build_exe.sh            : script de build macOS/Linux

PRÉREQUIS SUR LA MACHINE DE BUILD (Windows) :
1) Installer Python 3.10+ et s'assurer que 'python' et 'pip' sont dans le PATH
2) (Optionnel) Installer Microsoft Visual C++ Build Tools si PyInstaller le demande

ÉTAPES (Windows) :
1) Ouvrir le dossier dans l'Explorateur
2) Double-cliquer sur build_exe.bat
   - Le script installe les dépendances (pywebview, pyinstaller)
   - Puis génère un exécutable autonome
3) Récupérer le fichier .exe dans le dossier 'dist/AnalyseMvtSortie.exe'
4) Copier/partager ce .exe : il fonctionne SANS Python installé sur les autres PC

ÉTAPES (macOS / Linux) :
1) Donner les droits d'exécution :  chmod +x build_exe.sh
2) Lancer : ./build_exe.sh
3) Récupérer le binaire dans dist/

NOTE IMPORTANTE :
- L'exécutable inclura automatiquement le fichier index_toggle_theme.html grâce à l'option --add-data.
- Si vous modifiez l'HTML, relancez simplement le script de build pour intégrer les changements.
- Si vous voulez rajouter une icône :
  *Windows* : ajouter l'option --icon=mon_icone.ico à la commande PyInstaller.
- Si vous avez des fichiers supplémentaires à embarquer, ajoutez d'autres --add-data
  (sur Windows: 'source;destination', macOS/Linux: 'source:destination').

Bon build !
