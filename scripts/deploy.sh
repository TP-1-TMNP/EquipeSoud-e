
#!/bin/bash

# Arreter le script si une commande echoue
set -e

# Retrouver le dossier du projet a partir du script
DOSSIER="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Aller dans le dossier du projet
cd "$DOSSIER"

# Recuperer les dernieres modifications de GitHub
git pull --ff-only

# Copier les fichiers du site sur le serveur Nginx
sudo cp index.html style.css /var/www/html/

# Afficher un message quand tout est termine
echo "Deploiement termine"
