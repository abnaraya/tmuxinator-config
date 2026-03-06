# tmuxinator-config

Tmuxinator config for a 3-pane Codex workspace in `~/dev`.

## What this layout does

`codex-agents.yml` starts one tmux window with:

- Left pane: `codex` in `~/dev`
- Top-right pane: `codex` in `~/dev`
- Bottom-right pane: bash shell in `~/dev`

## Prerequisites

- `tmux`
- `ruby` + `gem` (for tmuxinator)
- `codex` CLI available on your `PATH`

## Install

### macOS (Homebrew)

```bash
brew install tmux ruby
gem install tmuxinator
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
tmuxinator start codex-agents
```

## Common commands

```bash
tmuxinator start codex-agents
tmuxinator stop codex-agents
tmuxinator edit codex-agents
```
