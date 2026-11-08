DOSSIER=~/serveur/site-equipe


if [ ! -d "$DOSSIER" ]; then
    echo "Erreur : le dossier $DOSSIER n'existe pas"
    exit 1
fi


cd "$DOSSIER" || exit 1


git pull


sudo cp index.html style.css /var/www/html/


echo "Déploiement terminé"