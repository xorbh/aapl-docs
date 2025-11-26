# Deploy to Fly.io

This guide walks you through deploying your MkDocs documentation to Fly.io.

## Prerequisites

- Fly.io account (sign up at https://fly.io)
- Fly CLI installed (you already have this!)
- Git repository with your documentation

## Quick Start

### 1. Authenticate with Fly.io

```bash
flyctl auth login
```

This will open a browser to authenticate.

### 2. Create a Fly.io App

```bash
flyctl apps create aapl-docs
```

Or let the deploy process create it automatically.

### 3. Deploy

```bash
flyctl deploy
```

This will:
- Build your Docker image using `Dockerfile.fly`
- Push it to Fly.io's registry
- Deploy it to the platform
- Assign you a URL

Your docs will be live at: `https://aapl-docs.fly.dev`

## Post-Deployment

### View your app

```bash
flyctl open
```

### Check logs

```bash
flyctl logs
```

### Check app status

```bash
flyctl status
```

## Custom Domain

### 1. Add a custom domain

```bash
flyctl certs create your-domain.com
flyctl certs create www.your-domain.com
```

### 2. Update DNS records

Fly.io will provide DNS records. Add them to your domain provider:
- CNAME record pointing to `aapl-docs.fly.dev`

### 3. Verify certificate

```bash
flyctl certs show your-domain.com
```

## Updating Documentation

### Local workflow

```bash
# Make changes to your docs
vi docs/index.md

# Test locally
mkdocs serve

# Commit and push
git add docs/
git commit -m "Update documentation"
git push origin master
```

### Deploy updates

```bash
# Redeploy to Fly.io
flyctl deploy
```

Or set up GitHub Actions for automatic deployment (see below).

## Automatic Deployment with GitHub Actions

Create `.github/workflows/deploy-fly.yml`:

```yaml
name: Deploy to Fly.io

on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Deploy to Fly.io
        uses: superfly/flyctl-actions@v1
        with:
          args: "deploy"
        env:
          FLY_API_TOKEN: ${{ secrets.FLY_API_TOKEN }}
```

### Set up GitHub Actions

1. Get your Fly.io API token:
   ```bash
   flyctl auth token
   ```

2. Add it to GitHub Secrets:
   - Go to your GitHub repo → Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Name: `FLY_API_TOKEN`
   - Value: paste your token
   - Click "Add secret"

3. Push the workflow file to GitHub

Now every push to master will automatically redeploy!

## Scaling & Configuration

### Scale to multiple regions

```bash
flyctl regions add syd  # Sydney
flyctl regions add lhr  # London
flyctl regions add dfw  # Dallas
```

### Increase resources

```bash
flyctl scale vm shared-cpu-2x --memory 512
```

Options:
- `shared-cpu-1x` (512MB RAM) - free tier
- `shared-cpu-2x` (1GB RAM)
- `shared-cpu-4x` (2GB RAM)
- `performance-2x` (4GB RAM)

### Set environment variables

```bash
flyctl secrets set MY_VAR=value
```

## Monitoring

### View real-time logs

```bash
flyctl logs -f
```

### View metrics

```bash
flyctl metrics
```

### SSH into app (for debugging)

```bash
flyctl ssh console
```

## Troubleshooting

### Deployment fails

Check logs for errors:
```bash
flyctl logs
```

Common issues:
- Missing dependencies in `requirements.txt`
- Port not correctly exposed
- Memory limit exceeded

### App crashes after deploy

```bash
# Rollback to previous version
flyctl releases list
flyctl releases rollback
```

### High resource usage

Monitor with:
```bash
flyctl metrics
```

Scale up if needed:
```bash
flyctl scale vm shared-cpu-2x --memory 512
```

## Advanced: Self-Hosted Gitea + Fly.io Docs

You can combine self-hosted Gitea (via Docker Compose) with Fly.io docs:

1. **Gitea on your server** (self-hosted for Git + web UI)
2. **Docs on Fly.io** (automatically built and served)

**Workflow:**
- Edit in Gitea web UI
- Push from Gitea to GitHub
- GitHub Actions triggers Fly.io deployment
- Users access docs via Fly.io URL

**Setup:**
1. Push your repo to GitHub
2. Configure GitHub Actions (see section above)
3. Run Gitea locally with Docker Compose
4. Configure Gitea to push to GitHub on changes

## Cleaning Up

### Suspend the app (pause billing)

```bash
flyctl suspend
```

### Resume

```bash
flyctl resume
```

### Delete the app (permanent)

```bash
flyctl apps destroy aapl-docs
```

## Resources

- [Fly.io Documentation](https://fly.io/docs/)
- [Fly.io Pricing](https://fly.io/docs/about/pricing/)
- [Python on Fly.io](https://fly.io/docs/languages-and-frameworks/python/)
- [GitHub Actions Integration](https://fly.io/docs/app-guides/continuous-deployment-with-github-actions/)

## Next Steps

1. Test locally: `mkdocs serve`
2. Deploy: `flyctl deploy`
3. Open: `flyctl open`
4. Set up custom domain (optional)
5. Configure auto-deployment via GitHub Actions

## FAQ

**Q: How much does Fly.io cost?**
A: Free tier includes 3 shared-cpu-1x VMs with 3GB storage. Perfect for documentation!

**Q: Can I use Fly.io for production?**
A: Yes! It's used by companies of all sizes.

**Q: How do I update my docs?**
A: Push to GitHub → GitHub Actions triggers → Fly.io auto-deploys.

**Q: Is it faster than GitHub Pages?**
A: Fly.io distributes globally, so it's often faster depending on your regions.

**Q: Can I use a database?**
A: Yes, Fly.io supports PostgreSQL, MySQL, Redis, etc.
