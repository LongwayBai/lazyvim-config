# LazyVim 个人配置

[English](README.en.md) | 简体中文

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![LazyVim](https://img.shields.io/badge/LazyVim-v8-green.svg)](https://github.com/LazyVim/LazyVim)

个人定制的 Neovim 配置，基于 [LazyVim](https://github.com/LazyVim/LazyVim) 构建，集成了丰富的插件和个性化配置，专注于提升开发体验。

## ✨ 特性

- 🚀 基于 LazyVim，快速启动和流畅体验
- 🎨 精选主题配置（Tokyo Night / Catppuccin）
- 🔧 完善的 LSP 支持，配合 Lspsaga 增强交互
- 📝 优化的代码补全（Blink.cmp）和代码编辑体验
- 🌳 集成 Yazi 文件管理器
- 📊 美化的 Markdown 渲染和预览
- 🎯 自定义键位映射和工作流优化

## 📦 主要插件

### 主题和界面
- **tokyonight.nvim** - Tokyo Night 主题（透明背景）
- **catppuccin/nvim** - Catppuccin Frappe 主题（默认）
- **lualine.nvim** - 优化的状态栏显示
- **mini.icons** - 图标支持
- **snacks.nvim** - 增强的仪表盘和 UI 组件

### 编辑器增强
- **nvim-treesitter** - 语法高亮和代码理解
- **vim-scripts/Mark--KarKat** - 文本标记
- **gcmt/wildfire.vim** - 快速选择
- **better-escape.nvim** - 优化的 Esc 映射（jk/jj）
- **yazi.nvim** - 终端文件管理器集成

### LSP 和补全
- **nvim-lspconfig** - LSP 基础配置
- **lspsaga.nvim** - LSP UI 增强（peek definition, hover doc 等）
- **blink.cmp** - 代码补全引擎
- **blink-emoji.nvim** - Emoji 补全支持（Markdown/Git commit）

### Markdown 支持
- **render-markdown.nvim** - 实时 Markdown 渲染
- **markdown-preview.nvim** - 浏览器预览（端口 7100）

### 代码编辑
- **snacks.nvim picker** - 文件查找和搜索（优化配置）

## 🔧 启用的 LazyVim Extras

```lua
"lazyvim.plugins.extras.ai.copilot"        -- GitHub Copilot AI 补全
"lazyvim.plugins.extras.ai.sidekick"       -- AI 编程助手
"lazyvim.plugins.extras.lang.clangd"       -- C/C++ 语言支持
"lazyvim.plugins.extras.lang.json"         -- JSON 语言支持
"lazyvim.plugins.extras.lang.markdown"     -- Markdown 语言支持
"lazyvim.plugins.extras.lang.python"       -- Python 语言支持
"lazyvim.plugins.extras.lang.typescript"   -- TypeScript 语言支持
```

## 📋 环境要求

### 必需工具

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

3. **Node.js** (用于 LSP 和插件)
   ```bash
   # macOS
   brew install node
   
   # Linux
   curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```

4. **Ripgrep** (代码搜索)
   ```bash
   # macOS
   brew install ripgrep
   
   # Linux
   sudo apt install ripgrep
   ```

5. **fd** (文件查找)
   ```bash
   # macOS
   brew install fd
   
   # Linux
   sudo apt install fd-find
   ```

### 推荐工具

1. **Yazi** (文件管理器)
   ```bash
   # macOS
   brew install yazi
   
   # Linux
   cargo install --locked yazi-fm
   ```

2. **lazygit** (Git TUI)
   ```bash
   # macOS
   brew install lazygit
   
   # Linux
   LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
   curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
   tar xf lazygit.tar.gz lazygit
   sudo install lazygit /usr/local/bin
   ```

3. **StyLua** (Lua 代码格式化)
   ```bash
   # macOS
   brew install stylua
   
   # Linux
   cargo install stylua
   ```

### 语言支持工具

根据你的开发需求安装相应的 LSP 服务器：

```bash
# Python
pip install python-lsp-server

# TypeScript/JavaScript
npm install -g typescript typescript-language-server

# C/C++
# macOS
brew install llvm

# JSON
npm install -g vscode-langservers-extracted

# Markdown
npm install -g marksman
```

## 🚀 安装

1. **备份现有配置**（如果有）：
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   mv ~/.local/state/nvim ~/.local/state/nvim.bak
   mv ~/.cache/nvim ~/.cache/nvim.bak
   ```

2. **克隆此配置**：
   ```bash
   git clone https://github.com/yourusername/lazyvim-config.git ~/.config/nvim
   ```

3. **启动 Neovim**：
   ```bash
   nvim
   ```

   首次启动时，LazyVim 会自动安装所有插件。

## ⌨️ 常用快捷键

### 通用操作
- `<C-s>` - 保存所有文件
- `jk` / `jj` - 退出插入模式（Insert 模式）
- `ji` - 退出终端模式（Terminal 模式）
- `<C-t>` - 打开/关闭终端

### 文件导航
- `<leader><space>` - 查找文件（当前工作目录）
- `<leader>fy` - 打开 Yazi 文件管理器
- `<leader>fw` - 在工作目录打开 Yazi
- `<C-up>` - 恢复上次 Yazi 会话

### 代码搜索
- `<leader>sg` - 在当前目录搜索文本
- `<leader>sG` - 在项目根目录搜索文本
- `<leader>sw` - 搜索光标下的单词（当前目录）
- `<leader>sW` - 搜索光标下的单词（项目根目录）

### LSP 功能
- `gd` - 查看定义（Peek Definition）
- `K` - 显示文档（Hover Documentation）
- `<leader>ca` - 代码操作
- `<leader>cf` - 格式化代码
- `<leader>a` - 切换 C/C++ 头文件/源文件

### Git 操作
- `<leader>gg` - 打开 lazygit（当前目录）
- `<leader>gG` - 打开 lazygit（项目根目录）

### 窗口管理
- `<leader>wm` - 窗口最大化/恢复
- `<leader>uz` - 切换缩放模式
- `<leader>uZ` - 切换 Zen 模式

### 诊断
- `<leader>sd` - 当前缓冲区诊断
- `<leader>sD` - 全局诊断

## 🎨 自定义配置

### 编辑器选项
- 缩进：4 空格
- 禁用交换文件
- 禁用自动格式化（需要手动触发）
- 编码：UTF-8

### 补全配置
- 使用 Blink.cmp 作为补全引擎
- 支持 `<Tab>` / `<S-Tab>` 导航
- `<CR>` 确认补全
- `<C-Space>` 手动触发补全

### LSP 配置
- 禁用虚拟文本诊断
- 禁用下划线诊断
- 禁用 Inlay Hints
- 使用 Lspsaga 增强 UI

## 📁 目录结构

```
~/.config/nvim/
├── init.lua                 # 入口文件
├── lazyvim.json            # LazyVim 配置
├── stylua.toml             # Lua 格式化配置
├── lua/
│   ├── config/
│   │   ├── autocmds.lua    # 自动命令
│   │   ├── keymaps.lua     # 键位映射
│   │   ├── lazy.lua        # Lazy.nvim 配置
│   │   └── options.lua     # 编辑器选项
│   └── plugins/
│       ├── ai.lua          # AI 插件配置
│       ├── code.lua        # 代码编辑插件
│       ├── editor.lua      # 编辑器增强插件
│       ├── lsp.lua         # LSP 配置
│       ├── theme.lua       # 主题配置
│       └── ui.lua          # UI 增强插件
```

## 🔄 更新

更新配置和插件：

```bash
# 更新配置文件
cd ~/.config/nvim
git pull

# 在 Neovim 中更新插件
:Lazy update
```

## 🐛 故障排查

### 插件加载问题
```vim
:Lazy health
:checkhealth
```

### LSP 不工作
```vim
:LspInfo
:Mason
```

### 清除缓存
```bash
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

## 📝 许可证

本项目采用 [Apache License 2.0](LICENSE) 许可证。

## 🙏 致谢

- [LazyVim](https://github.com/LazyVim/LazyVim) - 优秀的 Neovim 配置框架
- [Neovim](https://neovim.io/) - 现代化的 Vim 编辑器
- 所有插件作者的辛勤工作

## 📞 反馈

如有问题或建议，欢迎提交 Issue 或 Pull Request。
