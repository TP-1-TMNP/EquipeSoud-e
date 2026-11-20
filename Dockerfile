# Utilise l’image officielle de Nginx sur Alpine.
FROM nginx:alpine

# Installe les fichiers publics du site dans le dossier servi par Nginx.
COPY index.html style.css /usr/share/nginx/html/

# Documente le port HTTP à l’intérieur du conteneur.
EXPOSE 80
