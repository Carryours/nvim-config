# Neovim Keymaps

This document outlines the custom keybindings configured in this Neovim setup. The leader key is `Space`.

## General

### Normal Mode

| Key | Action | Description |
|---|---|---|
| `<leader>sv` | Vertical Split | 垂直分割窗口 |
| `<leader>sh` | Horizontal Split | 水平分割窗口 |
| `<leader>nh` | No Highlight | 清除搜索高亮 |
| `<S-L>` | Next Buffer | 切换到下一个缓冲区 |
| `<S-H>` | Previous Buffer | 切换到上一个缓冲区 |
| `gd` | Go to Definition | LSP: 跳转到定义 |
| `gr` | Go to References | LSP: 查找引用 |
| `gi` | Go to Implementation | LSP: 跳转到实现 |

### Visual Mode

| Key | Action | Description |
|---|---|---|
| `J` | Move Line Down | 向下移动选中行 |
| `K` | Move Line Up | 向上移动选中行 |

## Plugins

### Buffer Management

| Key | Action | Description |
|---|---|---|
| `<leader>q` | `:Bdelete` | 关闭当前缓冲区并保持布局 |

### NvimTree (File Explorer)

| Key | Action | Description |
|---|---|---|
| `<leader>e` | `:NvimTreeToggle` | 切换文件浏览器 |
| `<leader>f` | `:NvimTreeFocus` | 聚焦文件浏览器 |

### Telescope (Fuzzy Finder)

| Key | Action | Description |
|---|---|---|
| `<leader>ff` | Find Files | 按名称查找文件 |
| `<leader>fg` | Live Grep | 在文件中搜索字符串 |
| `<leader>fb` | Buffers | 列出已打开的缓冲区 |
| `<leader>fh` | Help Tags | 搜索帮助标签 |

### Git Integration

| Key | Action | Description |
|---|---|---|
| `<leader>gg` | `:LazyGit` | 打开 LazyGit 界面 |

### Terminal

| Key | Action | Description |
|---|---|---|
| `<leader>tt` | `:ToggleTerm` | 切换浮动终端 |

### Code Movement

| Key | Action | Description |
|---|---|---|
| `Alt` + `h/j/k/l` | Move Line/Selection | 移动当前行或可视选择 |

### Autopairs

| Key | Action | Description |
|---|---|---|
| `<M-e>` (Insert Mode) | Fast Wrap | 用配对字符包裹选中内容 |