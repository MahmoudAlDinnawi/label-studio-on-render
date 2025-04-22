FROM python:3.10

# System dependencies
RUN apt-get update && apt-get install -y libmagic1

# Create app folder
WORKDIR /app

# Install Label Studio
RUN pip install label-studio

# Expose port
EXPOSE 8080

ENV DJANGO_CSRF_TRUSTED_ORIGINS=https://label-studio-on-render.onrender.com

# Start app
CMD ["label-studio", "start", "--host", "0.0.0.0", "--port", "8080"]
