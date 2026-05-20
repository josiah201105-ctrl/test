FROM dockur/windows:latest

# Install additional utilities for better container experience
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

# Set up proper display environment
ENV DISPLAY=:1
ENV RESOLUTION=1920x1080
ENV VRAM=2048

# Expose necessary ports
EXPOSE 5900 6080 8006

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
    CMD curl -f http://localhost:6080/vnc.html || exit 1

CMD ["/start.sh"]
