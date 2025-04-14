FROM quay.io/keycloak/keycloak:26.0.1

ENV KC_DB=postgres
ENV KC_DB_URL_HOST=pca-pay-db
ENV KC_DB_URL_PORT=5432
ENV KC_DB_URL_DATABASE=pca_pay_db
ENV KC_DB_USERNAME=admin

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=1234567890

# Important pour Render
ENV KC_PROXY=edge
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["/opt/keycloak/bin/kc.sh", "start"]
