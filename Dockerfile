FROM quay.io/keycloak/keycloak:24.0.1

# COPY AVANT le build (pas nécessaire ici car on ne personnalise rien)

# En mode production, on build AVEC les variables d'env présentes à l'exécution
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]


