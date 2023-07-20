# L'image de base
FROM nginx:1.25.1

# Les arguments utilisés pendant le build de l'image
ARG USERNAME
ARG PASSWORD
ARG UID

# Définition des variables d'environnement
ENV DEBIAN_FRONTEND=noninteractive
ENV USERNAME=${USERNAME}

# Installation des extenions PHP
RUN apt update && \
    apt upgrade -y && \
    apt install -y sudo && \
    rm -rf /var/lib/apt/lists/*

# Création de l'utilisateur
RUN useradd -G sudo -u ${UID} -m ${USERNAME} \
    && echo "${USERNAME}:${PASSWORD}" | chpasswd

# Copie des fichiers de configuration
COPY ./docker/nginx/conf/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/conf/default.conf /etc/nginx/conf.d/default.conf

# Définition des permissions
RUN chown -R ${USERNAME}:${USERNAME} /var/cache/nginx /var/log/nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
    chown ${USERNAME}:${USERNAME} /var/run/nginx.pid

# Définition de répertoire de travail
WORKDIR /var/www/html/

# Définition de l'utilisateur
USER ${USERNAME}