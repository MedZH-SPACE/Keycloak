FROM quay.io/keycloak/keycloak:26.0.1

ENV KC_DB=postgres
ENV KC_DB_URL_DATABASE=jdbc:postgresql://pca-pay-db:5432/keycloak
ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=1234567890

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=1234567890

ENV KC_HOSTNAME=https://keycloak-hz7n.onrender.com
ENV KC_PROXY=edge

# Activer HTTP pour Render
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]

