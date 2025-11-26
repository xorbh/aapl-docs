FROM python:3.11-slim

WORKDIR /app

# Install required packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy mkdocs config
COPY mkdocs.yml .

# Create build script runner
COPY build.sh /app/
RUN chmod +x /app/build.sh

ENTRYPOINT ["/app/build.sh"]
