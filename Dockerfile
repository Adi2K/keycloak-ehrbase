# Use the official Keycloak image
FROM quay.io/keycloak/keycloak:24.0.3

# Set environment variables
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_HTTP_RELATIVE_PATH=/auth

# Copy the import directory for realm import
COPY ./import /opt/keycloak/data/import

# Expose the required port
EXPOSE 8080

# Run the Keycloak server in development mode with realm import
CMD ["start-dev", "--import-realm"]
