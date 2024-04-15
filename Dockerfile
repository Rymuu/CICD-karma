# Utilisation de nginx comme image de base
FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Définition du répertoire de travail à l'intérieur du conteneur
WORKDIR /usr/share/nginx/html

# Copie des fichiers HTML, JS et CSS générés dans le répertoire nginx
COPY . .

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
