FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Build the Keycloak distribution
RUN /opt/keycloak/bin/kc.sh build

# Use cache=local to disable clustering and avoid cookie mismatch warnings
CMD ["/opt/keycloak/bin/kc.sh", "start", "--cache=local"]
