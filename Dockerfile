FROM n8nio/n8n:latest-debian
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      chromium \
      chromium-driver \
      fonts-liberation \
      fonts-noto-color-emoji \
      libx11-xcb1 libxcomposite1 libxdamage1 libxrandr2 libgbm1 \
      libasound2 libpangocairo-1.0-0 libnss3 libxss1 libatk1.0-0 libgtk-3-0 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
USER node
