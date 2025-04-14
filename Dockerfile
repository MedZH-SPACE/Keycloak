FROM quay.io/keycloak/keycloak:26.0.1

# Connexion à la base de données
ENV KC_DB=postgres
ENV KC_DB_URL_HOST=pca-pay-db
ENV KC_DB_URL_PORT=5432
ENV KC_DB_URL_DATABASE=keycloak
ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=1234567890

# Compte admin
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=1234567890

# Configuration hostname pour Render
ENV KC_HOSTNAME=keycloak-hz7n.onrender.com
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

# Build Keycloak
RUN /opt/keycloak/bin/kc.sh build

# Port exposé
EXPOSE 8080

# Démarrage en mode développement
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
