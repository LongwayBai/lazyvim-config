# LazyVim Configuration

English | [简体中文](README.md)

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![LazyVim](https://img.shields.io/badge/LazyVim-v8-green.svg)](https://github.com/LazyVim/LazyVim)

Personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim), designed for keyboard-first development with prewired LSP, search, file management, Markdown tooling, and common language support.

> Companion documentation is available at <https://longwaybai.github.io/docs/lazyvim/>. This repository contains the actual configuration, while the docs site and blog provide installation guidance, keymap reference, plugin rationale, and broader notes.

![LazyVim dashboard](https://longwaybai.github.io/img/lazyvim/lazyvim.png)

![Yazi integration](https://longwaybai.github.io/assets/images/yazi-a8663bf253da6cfd16990f094bff2a05.png)

## ✨ Highlights

- Built on LazyVim v8, preserving the ecosystem while refining the daily workflow
- Defaults to **Catppuccin Frappé**, with Tokyo Night also configured as an alternative theme
- Uses **Lspsaga** to improve definition preview, hover docs, code actions, and other LSP entry points
- Uses **Blink.cmp** for completion and documentation popups, plus Emoji completion for Markdown and Git commits
- Integrates **Yazi**, **Snacks picker**, and **lazygit** for file navigation, search, and Git operations
- Includes **render-markdown.nvim** and **markdown-preview.nvim** for Markdown authoring and preview
- Enables LazyVim extras for Copilot, Sidekick, clangd, JSON, Markdown, Python, and TypeScript

## 📚 Repository and Documentation Links

This repository and the published docs are intended to be used together:

- [LazyVim Guide](https://longwaybai.github.io/docs/lazyvim/): overview, positioning, and reading path
- [Installation and Environment Setup](https://longwaybai.github.io/docs/lazyvim/installation): full setup flow, dependencies, and troubleshooting notes
- [Keymap Reference](https://longwaybai.github.io/docs/lazyvim/keymaps): high-frequency shortcuts and workflow entry points
- [Plugins and Extensions](https://longwaybai.github.io/docs/lazyvim/plugins): plugin selection and configuration rationale
- [LongwayBai site / blog](https://longwaybai.github.io/): related tooling notes and additional development setup articles

The README focuses on repository usage. For expanded explanations, screenshots, and walkthrough-style guidance, use the published docs.

## 📋 Requirements

- **Neovim**: `>= 0.11.2`
- **Base dependencies**: `git`, `node`, `ripgrep`, `fd`
- **Recommended tools**: `yazi`, `lazygit`, `stylua`
- **Language support**: install the required LSP servers through `:Mason` and keep the matching language runtimes available

```bash
nvim --version
git --version
node --version
rg --version
fd --version
```

## 🚀 Installation

### Quick Install

```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null || true
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null || true
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null || true
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null || true

git clone https://github.com/LongwayBai/lazyvim-config.git ~/.config/nvim
nvim
```

On first launch, LazyVim bootstraps the plugin set automatically. After that, run `:Mason` inside Neovim to install the language servers you need.

### Updating

```bash
cd ~/.config/nvim
git pull
```

Then run the following inside Neovim:

```vim
:Lazy update
```

## ⚡ Minimal First Steps

The Leader key is **Space**. If you are new to this configuration, start with the following commands and shortcuts:

| Key Binding | Description |
| --- | --- |
| `jk` / `jj` | Leave insert mode |
| `<C-s>` | Save all files |
| `<leader><space>` | Find files in the current working directory |
| `<leader>fy` | Open Yazi |
| `<leader>sg` | Search text in the current directory |
| `gd` | Peek definition |
| `K` | Show hover documentation |
| `<leader>?` | Show available key bindings |

See the full list in the [Keymap Reference](https://longwaybai.github.io/docs/lazyvim/keymaps).

## 🔌 Configuration Overview

### Theme and UI

- `lua/plugins/theme.lua`: configures Tokyo Night and Catppuccin, with `catppuccin-frappe` as the default
- `lua/plugins/ui.lua`: adjusts the dashboard, lualine, icons, and better-escape behavior

### Editing, Search, and File Management

- `lua/plugins/code.lua`: configures Snacks picker, Markdown rendering/preview, and Yazi integration
- `lua/plugins/editor.lua`: configures Blink.cmp, documentation windows, keymaps, and Emoji completion

### LSP and Workflow

- `lua/plugins/lsp.lua`: routes `gd`, `K`, `<leader>ca`, `<leader>cf`, and related actions through Lspsaga / LSP
- `lua/config/keymaps.lua`: adds save, terminal, lazygit, and window zoom shortcuts
- `lua/config/options.lua`: keeps 4-space indentation, disables swap files and auto-formatting, and uses UTF-8

### Enabled LazyVim extras

```lua
lazyvim.plugins.extras.ai.copilot
lazyvim.plugins.extras.ai.sidekick
lazyvim.plugins.extras.lang.clangd
lazyvim.plugins.extras.lang.json
lazyvim.plugins.extras.lang.markdown
lazyvim.plugins.extras.lang.python
lazyvim.plugins.extras.lang.typescript
```

## 🧩 Repository Layout

```text
lazyvim-config/
├── init.lua
├── lazyvim.json
├── stylua.toml
├── lua/
│   ├── config/
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins/
│       ├── ai.lua
│       ├── code.lua
│       ├── editor.lua
│       ├── lsp.lua
│       ├── theme.lua
│       └── ui.lua
├── README.md
├── README_EN.md
└── LICENSE
```

## 🛠️ Troubleshooting

### Plugin and health checks

```vim
:Lazy health
:checkhealth
```

### LSP is not working as expected

```vim
:Mason
:LspInfo
:LspLog
```

### Plugin state becomes inconsistent after updates

```bash
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

For the full troubleshooting notes, see [Installation and Environment Setup](https://longwaybai.github.io/docs/lazyvim/installation).

## 🤝 Contributing

Issues and pull requests are welcome. If you change user-facing behavior, keymaps, or setup steps, please keep this repository README and the companion docs site in sync so the repository and blog remain aligned.

## 📜 License

See [LICENSE](LICENSE).
