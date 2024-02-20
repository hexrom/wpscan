# Use the official WPScan Docker image as the base
FROM wpscanteam/wpscan

# Accept WPScan API token as a build argument
ARG WPSCAN_API_TOKEN

# Set the environment variable for the WPScan API token with the argument value
ENV WPSCAN_API_TOKEN=${WPSCAN_API_TOKEN}

# Copy the custom entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the custom entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the custom entrypoint script as the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

