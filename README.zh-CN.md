# LazyVim 配置说明

这是一个基于 LazyVim 15.x 版本的 Neovim 配置文件，专门为 Ubuntu 24.02 优化。

## 主要特性

### 核心工具集成

1. **GitHub Copilot** - AI 代码补全
   - 使用 `<M-l>` (Alt+L) 接受建议
   - 使用 `<M-]>` 和 `<M-[>` 切换建议
   - 使用 `<C-]>` 关闭建议

2. **Lazygit** - Git 终端界面
   - 使用 `<leader>gg` 打开 Lazygit
   - 使用 `<leader>gf` 查看当前文件的 Git 历史
   - 使用 `<leader>gl` 查看 Git 日志

3. **Telescope + FZF** - 模糊查找器
   - 使用 `<leader><space>` 查找文件
   - 使用 `<leader>/` 在文件中搜索（使用 ripgrep）
   - 使用 `<leader>fb` 查找缓冲区

4. **Ripgrep** - 快速搜索
   - 集成在 Telescope 中
   - 用于快速代码搜索
   - 支持正则表达式

## 安装步骤

### 1. 系统依赖

```bash
# 更新包列表
sudo apt update

# 安装基础工具
sudo apt install -y build-essential

# 安装 Neovim (最新版本)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim

# 安装 Node.js (Copilot 需要)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# 安装 ripgrep
sudo apt install -y ripgrep

# 安装 fzf
sudo apt install -y fzf

# 安装 lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz
```

### 2. 备份现有配置

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### 3. 克隆配置

```bash
git clone https://github.com/LongwayBai/lazyvim-config.git ~/.config/nvim
```

### 4. 启动 Neovim

```bash
nvim
```

首次启动时：
- lazy.nvim 会自动安装
- 所有插件会自动下载
- Treesitter 解析器会自动安装
- LSP 服务器可通过 Mason 安装

### 5. 配置 GitHub Copilot

在 Neovim 中运行：
```vim
:Copilot auth
```

按照提示在浏览器中授权 GitHub Copilot。

## 目录结构

```
~/.config/nvim/
├── init.lua                    # 入口文件
├── lua/
│   ├── config/
│   │   ├── autocmds.lua       # 自动命令
│   │   ├── keymaps.lua        # 键位映射
│   │   └── options.lua        # Neovim 选项
│   └── plugins/
│       ├── cmp.lua            # 自动补全
│       ├── colorscheme.lua    # 配色方案
│       ├── copilot.lua        # GitHub Copilot
│       ├── lazygit.lua        # Lazygit 集成
│       ├── lsp.lua            # LSP 配置
│       ├── telescope.lua      # Telescope + FZF + ripgrep
│       ├── treesitter.lua     # Treesitter
│       ├── ui.lua             # UI 插件
│       └── util.lua           # 实用插件
└── README.md
```

## 常用快捷键

### 基础操作

- `<Space>` - Leader 键
- `<leader>l` - 打开 Lazy 插件管理器
- `<C-s>` - 保存文件
- `<leader>qq` - 退出所有窗口

### 文件导航

- `<leader><space>` - 查找文件 (Telescope)
- `<leader>ff` - 查找文件
- `<leader>fr` - 最近文件
- `<leader>/` - 在文件中搜索
- `<leader>fb` - 查找缓冲区
- `<leader>e` - 切换文件浏览器 (Neo-tree)

### Git 操作

- `<leader>gg` - 打开 Lazygit
- `<leader>gf` - 当前文件的 Lazygit
- `<leader>gl` - Lazygit 日志
- `<leader>gs` - Git 状态 (Telescope)
- `<leader>gc` - Git 提交 (Telescope)
- `]h` / `[h` - 下一个/上一个 Git 变更
- `<leader>ghs` - 暂存变更
- `<leader>ghr` - 重置变更
- `<leader>ghp` - 预览变更

### Copilot

- `<M-l>` (Alt+L) - 接受 Copilot 建议
- `<M-]>` (Alt+]) - 下一个建议
- `<M-[>` (Alt+[) - 上一个建议
- `<C-]>` - 关闭建议
- `<M-CR>` - 打开 Copilot 面板

### LSP

- `gd` - 跳转到定义
- `gr` - 查找引用
- `K` - 悬停文档
- `<leader>ca` - 代码操作
- `<leader>rn` - 重命名符号
- `]d` / `[d` - 下一个/上一个诊断

### 缓冲区和窗口

- `<S-h>` / `<S-l>` - 上一个/下一个缓冲区
- `<leader>bd` - 删除缓冲区
- `<C-h/j/k/l>` - 在窗口间导航
- `<leader>w|` - 垂直分割窗口
- `<leader>w-` - 水平分割窗口

### 代码导航

- `]f` / `[f` - 下一个/上一个函数
- `]c` / `[c` - 下一个/上一个类
- `<C-space>` - 增量选择 (Treesitter)

## 自定义配置

### 添加新插件

在 `lua/plugins/` 目录下创建新文件。例如：

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- 插件配置
  end,
}
```

### 更新插件

```vim
:Lazy sync
```

### 安装 LSP 服务器

```vim
:Mason
```

然后搜索并安装需要的语言服务器。

## 常见问题

### Copilot 无法工作

1. 确保 Node.js >= 18.x: `node --version`
2. 认证 Copilot: `:Copilot auth`
3. 检查 Copilot 状态: `:Copilot status`

### Lazygit 无法打开

1. 验证 lazygit 已安装: `lazygit --version`
2. 确保在 PATH 中: `which lazygit`

### Telescope 速度慢或找不到文件

1. 确保 ripgrep 已安装: `rg --version`
2. 确保 fzf 已安装: `fzf --version`

### 插件安装问题

1. 清除插件缓存: `rm -rf ~/.local/share/nvim`
2. 重启 Neovim 让插件重新安装

## 技术支持

针对此配置的问题，请在仓库中提交 issue。

LazyVim 官方文档: https://www.lazyvim.org/

## 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件
