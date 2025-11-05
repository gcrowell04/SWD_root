TODO


Update domain references in:

nginx.conf
production_settings.py
Certbot commands



Run the pipeline:
Shelldocker-compose -f docker-compose.prod.yml up --buildShow more lines


Install Certbot on your host and follow the certbot_setup_instructions.txt.


Secure your .env file and never commit it to version control.



📦 Key Components

Backend: Django app with modular settings for staging and production.
Frontend: Eleventy static site with source and build directories.
Nginx: Reverse proxy config and SSL certs.
Monitoring: Prometheus config and Grafana dashboards.
CI/CD: GitHub Actions workflows for backend and frontend.
Environment: Separate .env files for production and staging.
Docker: Compose files for production, staging, and monitoring.



Prometheus:

Scrapes metrics from Django and Nginx
Configured via monitoring/prometheus.yml
Accessible at http://localhost:9090



Grafana:

Visualizes metrics from Prometheus
Uses provisioned dashboard and datasource files
Accessible at http://localhost:3000 (default login: admin/admin)






