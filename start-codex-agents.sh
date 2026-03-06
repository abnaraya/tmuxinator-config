#!/usr/bin/env bash
set -euo pipefail

SESSION="codex-agents"
WINDOW="main"
TARGET="${SESSION}:${WINDOW}"

tmuxinator start "${SESSION}"

# Reapply layout after attach so pane geometry matches current client size.
tmux select-layout -t "${TARGET}" main-vertical
