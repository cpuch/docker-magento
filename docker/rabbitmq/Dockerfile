# Image de basse
FROM rabbitmq:3.11.20

# Argument pour le build de l'image
ARG RABBITMQ_DEFAULT_USER
ARG RABBITMQ_DEFAULT_PASS
ARG RABBITMQ_DEFAULT_VHOST
#ARG RABBITMQ_MAGENTO_USERNAME
#ARG RABBITMQ_MAGENTO_PASSWORD

# Création d'un utlisateur administrateur
#RUN /opt/rabbitmq/sbin/rabbitmqctl add_user ${RABBITMQ_DEFAULT_USERNAME} ${RABBITMQ_ADMIN_PASSWORD} && \
#	/opt/rabbitmq/sbin/rabbitmqctl set_permissions -p / ${RABBITMQ_ADMIN_USERNAME} ".*" ".*" ".*"

# Suppression de l'utilisateur guest
#RUN /opt/rabbitmq/sbin/rabbitmqctl delete_user guest

# Création du vhost magento et de son utilisateur
#RUN /opt/rabbitmq/sbin/rabbitmqctl add_vhost magento && \
#	/opt/rabbitmq/sbin/rabbitmqctl add_user ${RABBITMQ_MAGENTO_USERNAME} ${RABBITMQ_MAGENTO_PASSWORD} && \
#	/opt/rabbitmq/sbin/rabbitmqctl set_permissions -p magento ${RABBITMQ_MAGENTO_USERNAME} ".*" ".*" ".*"
