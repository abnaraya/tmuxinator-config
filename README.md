# tmuxinator-config

Tmuxinator config for a 3-pane Codex workspace in `~/dev`.

## What this layout does

`codex-agents.yml` starts one tmux window with:

- Left pane: `codex` in `~/dev`
- Top-right pane: `codex` in `~/dev`
- Bottom-right pane: bash shell in `~/dev`

## Prerequisites

- `tmux`
- `tmuxinator`
- `codex` CLI available on your `PATH`

## Install

### macOS (Homebrew)

```bash
brew install tmux tmuxinator
```

### Ubuntu/Debian

```bash
sudo apt update
sudo apt install -y tmux ruby-full build-essential
gem install tmuxinator
```

## Use this config

From this repo directory:

```bash
mkdir -p ~/.config/tmuxinator
ln -sf "$PWD/codex-agents.yml" ~/.config/tmuxinator/codex-agents.yml
./start-codex-agents.sh
```

`start-codex-agents.sh` starts tmuxinator in detached mode, enforces a 50% main pane width, reapplies `main-vertical`, then attaches so pane sizing matches your current terminal size.

## Common commands

```bash
./start-codex-agents.sh
./stop-codex-agents.sh
tmuxinator stop codex-agents
tmuxinator edit codex-agents
```
