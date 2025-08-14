import os
import webview

# Chemin absolu vers le fichier HTML embarqué à côté de l'exécutable
base_path = getattr(sys, '_MEIPASS', os.path.abspath(os.path.dirname(__file__))) if 'sys' in globals() else os.path.abspath(os.path.dirname(__file__))
fichier_html = os.path.join(base_path, "index_toggle_theme.html")

webview.create_window(
    title="Analyse & Prévision Mvt Sortie",
    url=f"file://{fichier_html}",
    width=1200,
    height=800,
    resizable=True
)
webview.start()
