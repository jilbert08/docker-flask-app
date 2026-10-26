
# Use a lightweight official Python image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Avoid creating Python bytecode files
ENV PYTHONDONTWRITEBYTECODE=1

# Show Python logs immediately
ENV PYTHONUNBUFFERED=1

# Install application dependencies first
COPY app/requirements.txt .

# Install Flask without retaining pip's download cache
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app/ .

# Document the port used by the application
EXPOSE 5000

# Run the Flask application
CMD ["python", "main.py"]
