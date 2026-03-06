#!/usr/bin/env bash
set -euo pipefail

SESSION="codex-agents"
WINDOW="main"
TARGET="${SESSION}:${WINDOW}"

if ! tmux has-session -t "${SESSION}" 2>/dev/null; then
  tmuxinator start "${SESSION}" --no-attach
fi

# Enforce a 50% main pane using absolute cells, then reapply layout.
window_width="$(tmux display-message -p -t "${TARGET}" "#{window_width}")"
main_width="$((window_width / 2))"
tmux set-window-option -t "${TARGET}" main-pane-width "${main_width}"
tmux select-layout -t "${TARGET}" main-vertical

tmux attach-session -t "${SESSION}"
