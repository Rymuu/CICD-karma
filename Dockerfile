# Utilisation de nginx comme image de base
FROM nginx:stable-alpine

# Définition du répertoire de travail à l'intérieur du conteneur
WORKDIR /usr/share/nginx/html

# Copie des fichiers HTML, JS et CSS générés dans le répertoire nginx
COPY . .

# Commande pour commenter la directive "user" dans la configuration nginx au démarrage du conteneur
CMD sed -i 's/^user/# user/' /etc/nginx/nginx.conf && \
    sed -i "s/listen[ ]*80;/listen \$PORT;/g" /etc/nginx/nginx.conf && \
    nginx -g 'daemon off;'
