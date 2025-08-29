FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Install system dependencies for Playwright and Chromium
RUN apt-get update && \
    apt-get install -y wget gnupg ca-certificates && \
    apt-get install -y libnss3 libatk-bridge2.0-0 libgtk-3-0 libxss1 libasound2 libgbm1 libxshmfence1 libxcomposite1 libxdamage1 libxrandr2 libxinerama1 libpango-1.0-0 libpangocairo-1.0-0 libatspi2.0-0 && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright and Chromium
RUN pip install --no-cache-dir playwright && \
    playwright install chromium

# Copy the rest of the application
COPY . .

CMD ["python", "main.py"]
