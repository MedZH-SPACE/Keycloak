FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

CMD ["start", "--cache=local"]
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
