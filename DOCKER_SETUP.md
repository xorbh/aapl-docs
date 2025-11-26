# Self-Hosted Documentation Setup with Docker

This setup provides a complete self-hosted documentation platform with:
- **Gitea**: GitHub-like Git server with web UI
- **MkDocs**: Documentation generator
- **Nginx**: Web server for serving docs
- **Auto-build service**: Automatically rebuilds docs when you push changes

## Quick Start

### 1. Prerequisites
- Docker and Docker Compose installed
- At least 2GB of available disk space
- A domain name (optional, but recommended)

### 2. Initial Setup

**Clone your documentation repository:**
```bash
cd /path/to/your/docs
```

**Create directories for SSL certificates (optional):**
```bash
mkdir -p ssl
```

### 3. Configure Environment

**Edit `docker-compose.yml` and update:**
- Replace `your-domain.com` in the Gitea `ROOT_URL` with your actual domain
- Update `GIT_REPO` with your repository URL
- Update `your-user/your-repo` with your actual Gitea user and repo name

Example:
```yaml
GITEA__server__ROOT_URL=http://mydocs.example.com:3000/
GIT_REPO=http://gitea:3000/admin/documentation.git
```

### 4. Start the Services

```bash
docker-compose up -d
```

This will start:
- **Gitea** on port 3000 (http://your-server:3000)
- **Nginx** on port 80 (http://your-server)
- **Docs builder** (runs automatically in background)

### 5. Initial Gitea Setup

1. Open http://your-server:3000 in your browser
2. Complete the initial setup (database type, admin user, etc.)
3. Create a repository for your documentation
4. Push your docs to this repository

## Usage

### Push Documentation Changes

```bash
# Local machine
git push origin master
```

The auto-build service will:
1. Detect the new commits (every 30 seconds)
2. Pull the changes
3. Run `mkdocs build`
4. Update the served documentation

Your changes will be live within 30 seconds!

### Web UI Features (Gitea)

- **Repository Management**: Create, delete, manage repositories
- **File Editing**: Edit Markdown files directly in the browser
- **Pull Requests**: Code review workflow
- **Issues**: Track tasks and bugs
- **Webhooks**: Advanced automation
- **User Management**: Add collaborators

## Production Configuration

### Enable HTTPS

**Generate SSL certificates** (using Let's Encrypt):
```bash
sudo certbot certonly --standalone -d your-domain.com
sudo cp /etc/letsencrypt/live/your-domain.com/fullchain.pem ./ssl/cert.pem
sudo cp /etc/letsencrypt/live/your-domain.com/privkey.pem ./ssl/key.pem
```

**Uncomment SSL sections** in `nginx.conf`:
- Redirect HTTP to HTTPS
- Add SSL certificate paths
- Configure SSL ciphers

**Uncomment in `docker-compose.yml`**:
- Update Gitea `ROOT_URL` to use `https://`

Restart services:
```bash
docker-compose down
docker-compose up -d
```

### Use PostgreSQL (Recommended for Production)

SQLite is fine for small teams, but PostgreSQL is recommended for production.

**Uncomment PostgreSQL service** in `docker-compose.yml`:
```yaml
postgres:
  image: postgres:15
  ...
```

**Update Gitea environment variables**:
```yaml
GITEA__database__DB_TYPE=postgres
GITEA__database__HOST=postgres:5432
GITEA__database__NAME=gitea
GITEA__database__USER=gitea
GITEA__database__PASSWD=your_secure_password
```

### Backup

**Backup Gitea data**:
```bash
docker run --rm -v gitea_data:/data -v $(pwd):/backup \
  alpine tar czf /backup/gitea-backup.tar.gz -C / data
```

**Restore**:
```bash
docker run --rm -v gitea_data:/data -v $(pwd):/backup \
  alpine tar xzf /backup/gitea-backup.tar.gz -C /
```

## Monitoring

### Check logs

```bash
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f gitea
docker-compose logs -f docs-builder
docker-compose logs -f nginx
```

### Health check

```bash
curl http://your-server/health
# Response: healthy
```

## Troubleshooting

### Docs not updating after push?

1. Check the builder logs:
   ```bash
   docker-compose logs docs-builder
   ```

2. Verify Git credentials are correct in `docker-compose.yml`

3. Check that the repository path is correct

4. Manual rebuild:
   ```bash
   docker-compose restart docs-builder
   ```

### Can't access Gitea?

1. Check if port 3000 is open:
   ```bash
   docker-compose logs gitea
   ```

2. Verify firewall allows port 3000

3. Check Gitea is running:
   ```bash
   docker ps | grep gitea
   ```

### Nginx serving old files?

1. Clear cache:
   ```bash
   docker-compose exec nginx sh -c 'rm -rf /usr/share/nginx/html/docs/*'
   docker-compose restart docs-builder
   ```

## File Structure

```
.
├── docker-compose.yml      # Docker services configuration
├── Dockerfile.builder      # Builder service image
├── build.sh               # Build script
├── nginx.conf             # Nginx configuration
├── mkdocs.yml             # MkDocs configuration
├── requirements.txt       # Python dependencies
├── DOCKER_SETUP.md        # This file
├── docs/                  # Documentation source
│   ├── index.md
│   ├── product/
│   ├── engineering/
│   └── ...
└── ssl/                   # SSL certificates (create if using HTTPS)
```

## Advanced Configuration

### Change build frequency

Edit `build.sh` and modify the sleep interval:
```bash
sleep 30  # Change 30 to your desired seconds
```

### Custom domain routing

Use Nginx reverse proxy to route subdomains:
```nginx
server {
    listen 80;
    server_name docs.example.com;

    location / {
        proxy_pass http://nginx:80;
    }
}
```

### Email notifications (Gitea)

Configure SMTP in Gitea web UI:
Settings → Site Administration → Mailer

## Security Best Practices

1. ✓ Use HTTPS in production
2. ✓ Keep Docker images updated: `docker-compose pull && docker-compose up -d`
3. ✓ Set strong admin password in Gitea
4. ✓ Restrict repository access to team members
5. ✓ Regular backups
6. ✓ Monitor logs for suspicious activity
7. ✓ Keep server OS and Docker updated
8. ✓ Use firewall to limit access to ports 3000, 80, 443

## Resources

- [Gitea Documentation](https://docs.gitea.io)
- [MkDocs Documentation](https://www.mkdocs.org)
- [Nginx Documentation](https://nginx.org/en/docs/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)

## Support

For issues with:
- **Gitea**: https://gitea.io
- **MkDocs**: https://www.mkdocs.org
- **Docker**: https://docs.docker.com

