# Part de l'image officielle nginx en version Alpine : legere et rapide a telecharger.
FROM nginx:alpine

# Copie les fichiers du site dans le dossier publie par nginx.
COPY index.html style.css /usr/share/nginx/html/

# Documente le port que le conteneur ecoute : c'est « -p » qui ouvre vraiment le passage.
EXPOSE 80
