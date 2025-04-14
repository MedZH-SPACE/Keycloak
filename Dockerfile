# Utilise l'image officielle Keycloak
FROM quay.io/keycloak/keycloak:24.0.1

# Variables d’environnement par défaut
ENV KC_DB=postgres

# Build Keycloak
RUN /opt/keycloak/bin/kc.sh build

# Commande de démarrage
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]


