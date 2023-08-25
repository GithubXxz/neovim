vim.g.mapleader = " "

local keymap = vim.keymap
local opt = {noremap =true, silent =true}

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "<C-e>", "<End>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", "5j")
keymap.set("v", "K", "5k")
keymap.set("v", "H", "^")
keymap.set("v", "L", "g_")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>wv", "<C-w>v",opt) -- 水平新增窗口 
keymap.set("n", "<leader>wh", "<C-w>s",opt) -- 垂直新增窗口
keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)
keymap.set("n", "<C-h>", "<C-w>h", opt)
keymap.set("n", "<C-l>", "<C-w>l", opt)

-- 取消高亮
keymap.set("n", "<C-n>", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "{", ":bnext<CR>")
keymap.set("n", "}", ":bprevious<CR>")

-- 移动
-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "H", "^")
keymap.set("n", "L", "g_")


-- ---------- OperatorPending ---------- ---
keymap.set("o", "H", "^")
keymap.set("o", "L", "g_")

-- ---------- 插件 ---------- ---
