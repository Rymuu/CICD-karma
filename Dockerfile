# Utiliser l'image nginx
FROM nginx:latest

# Supprimer les fichiers par défaut de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier les fichiers du projet dans le conteneur
COPY . /usr/share/nginx/html

# Copiez le fichier requirements.txt
COPY requirements.txt /tmp/requirements.txt

# Exposer le port 80
# EXPOSE 80

# Démarrer Nginx au démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]
