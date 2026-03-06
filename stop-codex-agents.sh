#!/usr/bin/env bash
set -euo pipefail

SESSION="codex-agents"

if [[ -n "${TMUX:-}" ]]; then
  current_session="$(tmux display-message -p '#S')"
  tmux kill-session -t "${current_session}"
  exit 0
fi

if tmux has-session -t "${SESSION}" 2>/dev/null; then
  tmux kill-session -t "${SESSION}"
fi
