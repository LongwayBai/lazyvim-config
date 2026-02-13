# LazyVim Configuration

A complete LazyVim (version 15.x) configuration for Neovim, optimized for Ubuntu 24.02.

## Features

This configuration includes:

- **LazyVim 15.x** - Modern Neovim configuration framework
- **GitHub Copilot** - AI-powered code completion
- **Lazygit** - Beautiful terminal UI for Git
- **Telescope with FZF** - Fuzzy finder with native FZF integration
- **Ripgrep** - Fast search tool integration
- Complete LSP support with Mason
- Treesitter for enhanced syntax highlighting
- Beautiful UI with Tokyo Night theme
- Auto-completion with nvim-cmp
- Git integration with Gitsigns
- File explorer with Neo-tree
- And many more plugins!

## Prerequisites

### System Requirements

- **OS**: Linux (Ubuntu 24.02 or similar)
- **Neovim**: >= 0.9.0 (recommended: >= 0.10.0)
- **Git**: >= 2.19.0
- **Node.js**: >= 18.x (required for Copilot)
- **Build tools**: `gcc`, `make`

### Required Tools

Install these tools on Ubuntu:

```bash
# Update package list
sudo apt update

# Install essential build tools
sudo apt install -y build-essential

# Install Neovim (latest stable)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim

# Install Node.js (required for Copilot)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Install ripgrep
sudo apt install -y ripgrep

# Install fzf
sudo apt install -y fzf

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz

# Optional: Install additional tools
sudo apt install -y fd-find bat
```

## Installation

### 1. Backup Existing Configuration

If you have an existing Neovim configuration:

```bash
# Backup your current config
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### 2. Clone This Configuration

```bash
# Clone this repository to your Neovim config directory
git clone https://github.com/LongwayBai/lazyvim-config.git ~/.config/nvim

# Or if you prefer SSH
git clone git@github.com:LongwayBai/lazyvim-config.git ~/.config/nvim
```

### 3. Launch Neovim

```bash
nvim
```

On first launch:
- Lazy.nvim will automatically install itself
- All plugins will be installed automatically
- Treesitter parsers will be installed
- LSP servers will be available via Mason

### 4. Setup GitHub Copilot

After Neovim is running:

1. Run `:Copilot auth` in Neovim
2. Follow the authentication instructions
3. You'll be redirected to GitHub to authorize Copilot
4. Return to Neovim and you're ready!

Alternatively, you can use `:Copilot setup` for a full setup wizard.

## Directory Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua    # Auto commands
│   │   ├── keymaps.lua     # Key mappings
│   │   └── options.lua     # Neovim options
│   └── plugins/
│       ├── cmp.lua         # Auto-completion
│       ├── colorscheme.lua # Color scheme
│       ├── copilot.lua     # GitHub Copilot
│       ├── lazygit.lua     # Lazygit integration
│       ├── lsp.lua         # LSP configuration
│       ├── telescope.lua   # Telescope + FZF + ripgrep
│       ├── treesitter.lua  # Treesitter
│       ├── ui.lua          # UI plugins
│       └── util.lua        # Utility plugins
└── README.md
```

## Key Bindings

### General

- `<Space>` - Leader key
- `<leader>l` - Open Lazy plugin manager
- `<C-s>` - Save file
- `<leader>qq` - Quit all

### File Navigation

- `<leader><space>` - Find files (Telescope)
- `<leader>ff` - Find files
- `<leader>fr` - Recent files
- `<leader>/` - Live grep (search in files)
- `<leader>fb` - Find buffers
- `<leader>e` - Toggle file explorer (Neo-tree)

### Git

- `<leader>gg` - Open Lazygit
- `<leader>gf` - Lazygit current file
- `<leader>gl` - Lazygit log
- `<leader>gs` - Git status (Telescope)
- `<leader>gc` - Git commits (Telescope)
- `]h` / `[h` - Next/previous git hunk
- `<leader>ghs` - Stage hunk
- `<leader>ghr` - Reset hunk
- `<leader>ghp` - Preview hunk

### Copilot

- `<M-l>` (Alt+L) - Accept Copilot suggestion
- `<M-]>` (Alt+]) - Next suggestion
- `<M-[>` (Alt+[) - Previous suggestion
- `<C-]>` - Dismiss suggestion
- `<M-CR>` - Open Copilot panel

### LSP

- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `]d` / `[d` - Next/previous diagnostic

### Buffers & Windows

- `<S-h>` / `<S-l>` - Previous/next buffer
- `<leader>bd` - Delete buffer
- `<C-h/j/k/l>` - Navigate between windows
- `<leader>w|` - Split window vertically
- `<leader>w-` - Split window horizontally

### Code Navigation

- `]f` / `[f` - Next/previous function
- `]c` / `[c` - Next/previous class
- `<C-space>` - Increment selection (Treesitter)

## Configuration

### Customization

You can customize the configuration by editing files in `lua/config/` and `lua/plugins/`.

### Adding Plugins

Create new files in `lua/plugins/` directory. For example:

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- plugin configuration
  end,
}
```

### Updating Plugins

```vim
:Lazy sync
```

### Installing LSP Servers

```vim
:Mason
```

Then search and install the language servers you need.

## Troubleshooting

### Copilot Not Working

1. Ensure Node.js >= 18.x is installed: `node --version`
2. Authenticate Copilot: `:Copilot auth`
3. Check Copilot status: `:Copilot status`

### Lazygit Not Opening

1. Verify lazygit is installed: `lazygit --version`
2. Ensure it's in your PATH: `which lazygit`

### Telescope Slow or Not Finding Files

1. Ensure ripgrep is installed: `rg --version`
2. Ensure fzf is installed: `fzf --version`

### Plugin Installation Issues

1. Clear plugin cache: `rm -rf ~/.local/share/nvim`
2. Restart Neovim and let plugins reinstall

## Support

For issues specific to this configuration, please open an issue on the repository.

For LazyVim documentation, visit: https://www.lazyvim.org/

## License

MIT License - see [LICENSE](LICENSE) file for details.