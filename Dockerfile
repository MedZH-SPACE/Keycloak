FROM quay.io/keycloak/keycloak:latest

# Configuration de la base de données
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://dpg-cvuebl15pdvs73c27440-a:5432/pca_pay_db
ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=s9YVdczwKkSWkLQz7prcuyXvvcRiGFbi

# Configuration réseau
ENV KC_HOSTNAME=your-service-name.onrender.com  # À remplacer après déploiement
ENV KC_PROXY=edge

# Admin credentials
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=1234567890

# Optimisations
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

RUN /opt/keycloak/bin/kc.sh build
CMD ["start", "--optimized"]
