# Dockerfile
FROM nginx:latest

# Copy custom NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-available/ /etc/nginx/sites-available/

# Create symlinks for enabled sites
RUN mkdir -p /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/ctf_challenge_01.conf /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/ctf_challenge_02.conf /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/ctf_challenge_03.conf /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/ctf_challenge_04.conf /etc/nginx/sites-enabled/ && \
    ln -s /etc/nginx/sites-available/ctf_challenge_server.conf /etc/nginx/sites-enabled/

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80 443

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
