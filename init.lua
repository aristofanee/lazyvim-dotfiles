-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("colorscheme oxocarbon")
vim.g.neovide_font = "JetBrainsMonoNL"
vim.g.neovide_cursor_animation_length = 0

-- Set PowerShell as the default shell
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
vim.opt.shellredir = '> %s 2>&1' -- Redirect stderr to stdout
