FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=1234567890

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://dpg-cvuebl15pdvs73c27440-a:5432/pca_pay_db
ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=s9YVdczwKkSWkLQz7prcuyXvvcRiGFbi
ENV KC_HOSTNAME=https://keycloak-dqid.onrender.com
ENV KC_PROXY=edge
EXPOSE 8080
ENV PORT=8080
# Mode production
ENV KC_METRICS_ENABLED=true
ENV KC_HEALTH_ENABLED=true
ENV KC_HTTP_ENABLED=true



# Démarrage avec la configuration
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]

