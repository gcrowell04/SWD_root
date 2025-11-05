TODO


Update domain references in:

nginx.conf
production_settings.py
Certbot commands



Run the pipeline:
Shelldocker-compose -f docker-compose.prod.yml up --buildShow more lines


Install Certbot on your host and follow the certbot_setup_instructions.txt.


Secure your .env file and never commit it to version control.



🔧 Key Components Recap
🐍 Django Backend

Uses Gunicorn for production.
Secure settings in production_settings.py.
Exposes REST API for frontend consumption.

🌐 Eleventy Frontend

Static site generator.
Built and served via Docker container.

🔀 Nginx

Acts as reverse proxy.
Routes traffic to frontend and backend.
Handles HTTPS via Certbot.

🐳 Docker

Two Dockerfiles for backend and frontend.
docker-compose.prod.yml orchestrates services.

🔐 HTTPS

Certbot setup instructions included.
SSL certs stored in certs/.

🚀 GitHub Actions

CI/CD workflows for backend and frontend.
Builds Docker images and deploys via SSH.


Prometheus:

Scrapes metrics from Django and Nginx
Configured via monitoring/prometheus.yml
Accessible at http://localhost:9090



Grafana:

Visualizes metrics from Prometheus
Uses provisioned dashboard and datasource files
Accessible at http://localhost:3000 (default login: admin/admin)






