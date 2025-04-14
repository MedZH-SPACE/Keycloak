FROM quay.io/keycloak/keycloak:26.0.1

# Connexion à la base de données
ENV KC_DB=postgres
ENV KC_DB_URL_DATABASE=$KC_DB_URL_DATABASE
ENV KC_DB_USERNAME=$KC_DB_USERNAME
ENV KC_DB_PASSWORD=$KC_DB_PASSWORD
ENV PORT=$KC_PORT
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



# Démarrage en mode développement
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]

