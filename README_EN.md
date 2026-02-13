# LazyVim Personal Config (English)

English | [简体中文](README.md)

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![LazyVim](https://img.shields.io/badge/LazyVim-v8-green.svg)](https://github.com/LazyVim/LazyVim)

This is my personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim). It integrates a curated plugin set and tailored tweaks to deliver a smooth, productive editing experience.

## ✨ Highlights

- 🚀 Fast startup and responsive feel powered by LazyVim
- 🎨 Carefully chosen themes (Tokyo Night / Catppuccin)
- 🔧 Enhanced LSP experience with Lspsaga
- 📝 Blink.cmp for smarter completion and editing
- 🌳 Built-in Yazi file manager
- 📊 Polished Markdown rendering and preview
- 🎯 Custom keymaps and workflow optimizations

## 📦 Core Plugins

### Theme & UI
- **tokyonight.nvim** – Tokyo Night theme with transparency
- **catppuccin/nvim** – Default Catppuccin Frappe flavor
- **lualine.nvim** – Sleek statusline
- **mini.icons** – Icon support
- **snacks.nvim** – Enhanced dashboard and UI widgets

### Editor Enhancements
- **nvim-treesitter** – Syntax highlighting and code analysis
- **vim-scripts/Mark--KarKat** – Visual marks
- **gcmt/wildfire.vim** – Fast selection
- **better-escape.nvim** – JK/JJ escape improvements
- **yazi.nvim** – Terminal file manager integration

### LSP & Completion
- **nvim-lspconfig** – Base LSP setup
- **lspsaga.nvim** – UI improvements (peek definition, hover docs, etc.)
- **blink.cmp** – Core completion engine
- **blink-emoji.nvim** – Emoji completion for Markdown/Git commits

### Markdown
- **render-markdown.nvim** – Live Markdown rendering
- **markdown-preview.nvim** – Browser preview (port 7100)

### Code Editing
- **snacks.nvim picker** – File finder and search frontend

## 🔧 Enabled LazyVim Extras

```lua
"lazyvim.plugins.extras.ai.copilot"        -- GitHub Copilot AI completion
"lazyvim.plugins.extras.ai.sidekick"       -- Sidekick AI assistant
"lazyvim.plugins.extras.lang.clangd"       -- C/C++ language support
"lazyvim.plugins.extras.lang.json"         -- JSON language support
"lazyvim.plugins.extras.lang.markdown"     -- Markdown language support
"lazyvim.plugins.extras.lang.python"       -- Python language support
"lazyvim.plugins.extras.lang.typescript"   -- TypeScript language support
```

## 📋 Requirements

### Required Tools

1. **Neovim** >= 0.11.2
   ```bash
   # macOS
   brew install neovim

   # Linux (Ubuntu/Debian)
   sudo apt install neovim
   ```

2. **Git**
   ```bash
   git --version
   ```

3. **Node.js**
   ```bash
   # macOS
   brew install node

   # Linux
   curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```

4. **Ripgrep**
   ```bash
   # macOS
   brew install ripgrep

   # Linux
   sudo apt install ripgrep
   ```

5. **fd**
   ```bash
   # macOS
   brew install fd

   # Linux
   sudo apt install fd-find
   ```

### Recommended Tools

1. **Yazi**
   ```bash
   # macOS
   brew install yazi

   # Linux
   cargo install --locked yazi-fm
   ```

2. **lazygit**
   ```bash
   # macOS
   brew install lazygit

   # Linux
   LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
   curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
   tar xf lazygit.tar.gz lazygit
   sudo install lazygit /usr/local/bin
   ```

3. **StyLua**
   ```bash
   # macOS
   brew install stylua

   # Linux
   cargo install stylua
   ```

### Language Support Servers

Install LSP servers that match your workflow:

```bash
# Python
pip install python-lsp-server

# TypeScript / JavaScript
npm install -g typescript typescript-language-server

# C/C++
# macOS
brew install llvm

# JSON
npm install -g vscode-langservers-extracted

# Markdown
npm install -g marksman
```

## 🚀 Installation

1. Back up existing configuration if present:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   mv ~/.local/state/nvim ~/.local/state/nvim.bak
   mv ~/.cache/nvim ~/.cache/nvim.bak
   ```

2. Clone this config:
   ```bash
   git clone https://github.com/yourusername/lazyvim-config.git ~/.config/nvim
   ```

3. Launch Neovim:
   ```bash
   nvim
   ```

LazyVim will install all plugins automatically during the first launch.

## ⌨️ Common Keymaps

### General
- `<C-s>` – Save all files
- `jk` / `jj` – Exit insert mode
- `ji` – Exit terminal mode
- `<C-t>` – Toggle terminal

### File Navigation
- `<leader><space>` – Find files in the current directory
- `<leader>fy` – Open Yazi
- `<leader>fw` – Open Yazi in the workspace root
- `<C-up>` – Restore last Yazi session

### Search
- `<leader>sg` – Search text in the current folder
- `<leader>sG` – Search text in the project root
- `<leader>sw` – Search the word under cursor (current folder)
- `<leader>sW` – Search the word under cursor (project root)

### LSP
- `gd` – Peek definition
- `K` – Show documentation
- `<leader>ca` – Code actions
- `<leader>cf` – Format buffer
- `<leader>a` – Toggle between C/C++ header and source

### Git
- `<leader>gg` – Launch lazygit in current folder
- `<leader>gG` – Launch lazygit at project root

### Window Management
- `<leader>wm` – Maximize/restore window
- `<leader>uz` – Toggle zoom mode
- `<leader>uZ` – Toggle Zen mode

### Diagnostics
- `<leader>sd` – Buffer diagnostics
- `<leader>sD` – Global diagnostics

## 🎨 Custom Settings

- Indent width: 4 spaces
- Swap files and auto-formatting are disabled (format manually)
- Encoding: UTF-8
- Blink.cmp handles completion, supports `<Tab>`/`<S-Tab>` navigation, `<CR>` to confirm, and `<C-Space>` for manual trigger
- Diagnostics virtual text, underlines, and inlay hints are disabled in favor of Lspsaga

## 📁 Directory Layout

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazyvim.json             # LazyVim config file
├── stylua.toml             # Lua formatter settings
├── lua/
│   ├── config/
│   │   ├── autocmds.lua    # Autocommands
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── lazy.lua        # lazy.nvim setup
│   │   └── options.lua     # Editor options
│   └── plugins/
│       ├── ai.lua          # AI configuration
│       ├── code.lua        # Code editing plugins
│       ├── editor.lua      # Editor enhancements
│       ├── lsp.lua         # LSP configuration
│       ├── theme.lua       # Theme settings
│       └── ui.lua          # UI helpers
```

## 🔄 Updates

```bash
# Update config
cd ~/.config/nvim
git pull

# Update plugins inside Neovim
:Lazy update
```

## 🐛 Troubleshooting

### Plugin loading issues
```vim
:Lazy health
:checkhealth
```

### LSP not working
```vim
:LspInfo
:Mason
```

### Clear cache
```bash
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

## 📝 License

This project is licensed under the [Apache License 2.0](LICENSE).

## 🙏 Acknowledgments

- [LazyVim](https://github.com/LazyVim/LazyVim) – Amazing Neovim starter config
- [Neovim](https://neovim.io/) – Modern Vim replacement
- All plugin authors for their hard work

## 📞 Feedback

Feel free to open an issue or pull request with questions, suggestions, or improvements.
