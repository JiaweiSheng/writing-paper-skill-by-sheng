#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="writting-paper-skill-by-sheng"

usage() {
  cat <<'EOF'
Install writting-paper-skill-by-sheng for local agents.

Usage:
  ./scripts/install.sh            # install to every detected agent
  ./scripts/install.sh --cursor
  ./scripts/install.sh --codex
  ./scripts/install.sh --claude
  ./scripts/install.sh --all      # install even if the agent dir is missing
EOF
}

install_one() {
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  if command -v rsync >/dev/null 2>&1; then
    rsync -a --delete \
      --exclude '.git/' \
      --exclude '.DS_Store' \
      "$ROOT/" "$dest/"
  else
    rm -rf "$dest"
    mkdir -p "$dest"
    cp -R "$ROOT/." "$dest/"
  fi
  echo "Installed $NAME -> $dest"
}

want_cursor=0
want_codex=0
want_claude=0
force_all=0

if [[ $# -eq 0 ]]; then
  want_cursor=1
  want_codex=1
  want_claude=1
else
  for arg in "$@"; do
    case "$arg" in
      --cursor) want_cursor=1 ;;
      --codex) want_codex=1 ;;
      --claude) want_claude=1 ;;
      --all)
        want_cursor=1
        want_codex=1
        want_claude=1
        force_all=1
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        echo "Unknown option: $arg" >&2
        usage >&2
        exit 1
        ;;
    esac
  done
fi

installed=0

if [[ "$want_cursor" -eq 1 ]]; then
  if [[ "$force_all" -eq 1 || -d "$HOME/.cursor" ]]; then
    install_one "$HOME/.cursor/skills/$NAME"
    installed=1
  else
    echo "Skip Cursor: ~/.cursor not found"
  fi
fi

if [[ "$want_codex" -eq 1 ]]; then
  if [[ "$force_all" -eq 1 || -d "$HOME/.codex" ]]; then
    install_one "$HOME/.codex/skills/$NAME"
    installed=1
  else
    echo "Skip Codex: ~/.codex not found"
  fi
fi

if [[ "$want_claude" -eq 1 ]]; then
  if [[ "$force_all" -eq 1 || -d "$HOME/.claude" ]]; then
    install_one "$HOME/.claude/skills/$NAME"
    installed=1
  else
    echo "Skip Claude Code: ~/.claude not found"
  fi
fi

if [[ "$installed" -eq 0 ]]; then
  echo "No agent skill directory was installed." >&2
  exit 1
fi

# Remove the previous Cursor-only name to avoid duplicate discovery.
if [[ -d "$HOME/.cursor/skills/writing-paper-by-sheng" ]]; then
  rm -rf "$HOME/.cursor/skills/writing-paper-by-sheng"
  echo "Removed leftover ~/.cursor/skills/writing-paper-by-sheng"
fi

echo "Done. Start a new agent chat before using the skill."
