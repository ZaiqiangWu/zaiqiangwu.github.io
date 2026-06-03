#!/usr/bin/env bash
# Deploy this Jekyll site locally, accessible from other machines on the network.
# Usage:  ./deploy.sh [port]   (default port: 4000)
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

BUNDLE_BIN=""

# ── 1. Resolve bundler location (rbenv / rvm / system) ─────────────────
if command -v bundle &>/dev/null; then
  BUNDLE_BIN="$(command -v bundle)"
elif command -v rbenv &>/dev/null; then
  eval "$(rbenv init - zsh 2>/dev/null || rbenv init - bash 2>/dev/null)"
  BUNDLE_BIN="bundle"
fi

if [[ -z "${BUNDLE_BIN:-}" ]]; then
  echo "❌ Ruby and Bundler are required. Install them:"
  echo "   brew install ruby && gem install bundler"
  exit 1
fi

# ── 2. Configure bundle to install gems locally (avoids permission issues) ──
bundle config set --local path 'vendor/bundle'

# ── 3. Install gems if Gemfile.lock is missing or outdated ─────────────
if [[ ! -f Gemfile.lock ]]; then
  echo "📦 Installing Ruby dependencies locally (this may take a minute)..."
  bundle install || {
    echo ""
    echo "❌ 'bundle install' failed."
    echo "   Try: gem install bundler && bundle install"
    exit 1
  }
fi

# ── 4. Ensure Jekyll is available via bundle exec ───────────────────────
if ! bundle exec jekyll --version &>/dev/null; then
  echo "❌ Jekyll not found. Run 'bundle install' and try again."
  exit 1
fi

echo "✅ Jekyll $(bundle exec jekyll --version | awk '{print $3}')"

# ── 5. Determine port (default 4000) and local network IP ───────────────
PORT="${1:-4000}"
NET_IP="$(ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}' | head -1)"
[[ -z "${NET_IP}" ]] && NET_IP="your-ip"

echo ""
echo "═══════════════════════════════════════════"
echo "  Academic Pages – Local Deployment"
echo "═══════════════════════════════════════════"
echo "  Site:     http://localhost:${PORT}"
echo "  Network:  http://${NET_IP}:${PORT}"
echo ""

# ── 6. Launch Jekyll serve ──────────────────────────────────────────────
echo "🚀 Serving on port ${PORT} (Ctrl+C to stop)..."
exec bundle exec jekyll serve \
  -H 0.0.0.0 \
  -p "${PORT}" \
  -w \
  --livereload \
  --config _config.yml,_config_docker.yml
