#!/bin/bash

# Arrête le script dès qu'une commande échoue.
set -e

# Chemin local du dépôt à déployer.
PROJECT_DIR="$HOME/serveur/site-equipe"

# Dossier servi par le serveur web.
WEB_ROOT="/var/www/html"

# Se placer dans le dépôt ; le script s'arrête si le dossier n'existe pas.
cd "$PROJECT_DIR" || {
    echo "Erreur : le dossier $PROJECT_DIR n'existe pas." >&2
    exit 1
}

# Récupérer la dernière version du projet depuis le dépôt distant.
git pull

# Copier les fichiers du site dans le dossier du serveur web.
sudo cp index.html style.css "$WEB_ROOT/"

# Donner aux fichiers les droits de lecture habituels pour le serveur web.
sudo chmod 644 "$WEB_ROOT/index.html" "$WEB_ROOT/style.css"

# Confirmer que le déploiement est terminé.
echo "Déploiement terminé dans $WEB_ROOT."