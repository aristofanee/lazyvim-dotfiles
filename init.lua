-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("colorscheme oxocarbon")
vim.g.neovide_font = "JetBrainsMonoNL"
vim.g.neovide_cursor_animation_length = 0

-- Set PowerShell as the default shell
if vim.fn.has('win32') == 1 then
vim.opt.shell = "powershell.exe -NoLogo"
vim.opt.shellxquote = '"'
-- Or, for the built-in Windows PowerShell:
-- vim.opt.shell = 'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe'
-- Optional: Set the shell to execute commands
-- This tells Neovim how to pass commands to the shell.
-- It's good practice to set this with PowerShell for proper command execution.
vim.opt.shellcmdflag = '-NoLogo -NoProfile -Command'
-- this is a test for lazygit actually dont think about it too much
-- Optional: Set the program used to read the shell output
-- This ensures Neovim can correctly interpret the output stream.
vim.opt.shellxquote = '' -- No quotes needed for PowerShell
end

vim.opt.shellredir = '> %s 2>&1' -- Redivim.opt.updatetime = 100       -- Quick UI updates

-- Stuff done for optimization
vim.opt.updatetime = 100  -- Very responsive 100ms setting
vim.opt.timeoutlen = 300       -- Faster key sequence completion
vim.opt.lazyredraw = false     -- Draw screen during macros (your CPU can handle it)
vim.opt.ttyfast = true         -- Faster terminal connection (though usually on by default in Neovim)
vim.g.cursorline_timeout = 100 -- If you use cursorline pluginrect stderr to stdout
