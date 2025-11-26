# Deployment Options Guide

You have two setup options. Here's a comparison to help you choose.

## Option 1: Self-Hosted (Docker Compose)

**What you get:**
- Full control over your infrastructure
- Gitea (GitHub-like web UI) on your server
- Auto-building documentation
- Everything on your own hardware

**Best for:**
- Companies with IT infrastructure
- Privacy-critical documentation
- Custom integrations needed
- Large teams needing full Git server

**Setup files:**
- `docker-compose.yml` - orchestrates all services
- `Dockerfile.builder` - builds docs automatically
- `build.sh` - watches for changes
- `nginx.conf` - serves the documentation
- `DOCKER_SETUP.md` - detailed instructions

**Quick start:**
```bash
docker-compose up -d
```

**Costs:**
- Server costs (VPS/dedicated hardware)
- Maintenance and updates
- Monitoring and backups

**Pros:**
✓ Full control
✓ No vendor lock-in
✓ Unlimited storage/bandwidth
✓ Custom domain with HTTPS
✓ Self-contained Gitea + docs
✓ Better for teams

**Cons:**
✗ Requires server management
✗ You maintain backups
✗ SSL certificate management
✗ Responsible for security updates
✗ Downtime is your responsibility

---

## Option 2: Cloud Deployment to Fly.io

**What you get:**
- Serverless deployment
- Auto-scaling
- Global CDN
- Built-in monitoring

**Best for:**
- Small teams
- Startups
- Simple documentation sites
- Quick deployment needed
- Want zero server management

**Setup files:**
- `fly.toml` - Fly.io configuration
- `Dockerfile.fly` - optimized for Fly.io
- `FLY_DEPLOYMENT.md` - detailed instructions

**Quick start:**
```bash
flyctl deploy
```

**Costs:**
- Free tier: includes shared CPU, 3GB storage
- Paid: $0.15/GB RAM per hour (starts around $5-10/month)
- Custom domains available

**Pros:**
✓ Zero server management
✓ Auto-scaling
✓ Global distribution (multiple regions)
✓ Built-in HTTPS
✓ Simple deployments
✓ Pay as you go
✓ GitHub Actions integration built-in

**Cons:**
✗ Vendor lock-in (though easy to migrate)
✗ Limited customization
✗ No Gitea web UI (use GitHub instead)
✗ Can't self-host Git server
✗ Need GitHub account

---

## Quick Comparison

| Feature | Self-Hosted | Fly.io |
|---------|------------|--------|
| Setup difficulty | Medium | Easy |
| Ongoing maintenance | High | None |
| Control | Full | Limited |
| Cost | $5-50/mo | $0-15/mo |
| Gitea (Git UI) | Yes | No |
| Auto-scaling | No | Yes |
| Global CDN | No | Yes |
| SSL/HTTPS | Manual | Automatic |
| Backups | Your responsibility | Fly.io handles |
| Learning curve | Moderate | Low |
| Best for team size | 3+ people | 1-2 people |

---

## Recommended Setup for Your Use Case

### If you want a complete Git server + docs:
**Self-Hosted Option** ✓
- Gitea provides GitHub-like editing interface
- Full control over everything
- Everything on one server

```
Flow: Edit in Gitea Web UI → Auto-build → Serve docs on Nginx
```

### If you want simplicity + less maintenance:
**Fly.io Option** ✓
- Push to GitHub
- Automatic deployment
- No server to manage

```
Flow: Edit locally/GitHub → Push → GitHub Actions → Deploy to Fly.io
```

### If you want best of both worlds:
**Hybrid Option** ✓
- Self-hosted Gitea (editing + version control)
- Fly.io for documentation (auto-deploy)
- GitHub as backup

```
Flow: Edit in Gitea → Push to GitHub → Auto-deploy to Fly.io
```

---

## How to Decide

### Choose Self-Hosted if:
- [ ] You have a dedicated IT team
- [ ] You need maximum control
- [ ] Documentation is mission-critical
- [ ] You prefer zero cloud dependencies
- [ ] You want to self-host Gitea
- [ ] You have server infrastructure already

### Choose Fly.io if:
- [ ] You want minimal maintenance
- [ ] You're a small team
- [ ] Budget is a concern
- [ ] You're comfortable with GitHub
- [ ] You want global distribution
- [ ] You prefer cloud infrastructure

---

## Migration Path

You're not locked into one choice:

**Start with Fly.io:**
1. Deploy quickly to Fly.io
2. Document your process
3. If you need Gitea later, move to self-hosted

**Start with Self-Hosted:**
1. Run Docker Compose locally
2. If you want less maintenance, migrate to Fly.io
3. Keep Gitea for version control/editing

---

## Setting Up Both (Recommended)

Many teams use **both**:

**Self-Hosted Gitea** (source of truth)
- Internal editing interface
- Git server
- User management

**Fly.io Docs** (public facing)
- Automatic deployment
- Global distribution
- Zero downtime

**Workflow:**
```
1. Team edits in Gitea web UI
2. Push from Gitea to GitHub
3. GitHub webhook triggers Fly.io deploy
4. Public sees latest docs on Fly.io
5. No server management needed for docs
```

**Implementation:**
1. Set up Gitea with Docker Compose on your server
2. Deploy docs to Fly.io
3. Configure GitHub Actions to auto-deploy
4. Push from Gitea to GitHub on commit

---

## Next Steps

### For Self-Hosted:
```bash
1. Review DOCKER_SETUP.md
2. Update docker-compose.yml with your details
3. Run: docker-compose up -d
4. Access Gitea at http://your-server:3000
```

### For Fly.io:
```bash
1. Review FLY_DEPLOYMENT.md
2. Run: flyctl deploy
3. Access docs at https://aapl-docs.fly.dev
4. (Optional) Set up custom domain
```

### For Hybrid:
```bash
1. Set up Gitea with Docker Compose
2. Deploy docs to Fly.io
3. Configure Gitea webhook to push to GitHub
4. Set up GitHub Actions for auto-deploy
```

---

## Files Included

### Self-Hosted Files:
- `docker-compose.yml` - Main configuration
- `Dockerfile.builder` - Auto-build service
- `build.sh` - Build script
- `nginx.conf` - Web server config
- `DOCKER_SETUP.md` - Full instructions

### Fly.io Files:
- `fly.toml` - Fly.io configuration
- `Dockerfile.fly` - Optimized Dockerfile
- `FLY_DEPLOYMENT.md` - Deployment guide

### This file:
- `DEPLOYMENT_GUIDE.md` - This comparison guide

---

## Support & Resources

**Self-Hosted:**
- Docker: https://docs.docker.com
- Gitea: https://docs.gitea.io
- Nginx: https://nginx.org/en/docs/

**Fly.io:**
- Fly.io Docs: https://fly.io/docs
- Python Deployment: https://fly.io/docs/languages-and-frameworks/python/

**General:**
- MkDocs: https://www.mkdocs.org
- GitHub Actions: https://docs.github.com/actions

---

## Questions?

- **"How do I pick one?"** → See "Recommended Setup for Your Use Case"
- **"Can I change my mind?"** → Yes! Both are reversible
- **"Which is more secure?"** → Self-hosted (more control)
- **"Which is cheaper?"** → Fly.io (free tier available)
- **"Which has more features?"** → Self-hosted (full Gitea)

Choose based on your team size, budget, and maintenance capacity!
