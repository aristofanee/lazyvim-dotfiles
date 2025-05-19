return {
  -- Flutter Tools
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup {
        ui = {
          -- the border type to use for all floating windows, the same options that
          -- are available for vim.lsp.util.open_floating_preview
          border = "rounded",
          -- This determines whether notifications are show with `vim.notify` or with
          -- the plugin's custom UI
          -- please note that this option is eventually going to be deprecated and users will
          -- need to decide to use `vim.notify` or other notification plugins instead
          notification_style = 'native',
        },
        decorations = {
          statusline = {
            -- set to true to be able to see flutter app device info in the statusline
            app_version = true,
            device = true,
          }
        },
        widget_guides = {
          enabled = true,
        },
        dev_log = {
          enabled = true,
          open_cmd = "tabedit", -- command to use to open the log buffer
        },
        lsp = {
          color = { -- show the derived colors for dart variables
            enabled = true,
            background = false, -- highlight the background
            foreground = false, -- highlight the foreground
            virtual_text = true, -- show the highlight using virtual text
            virtual_text_str = "■", -- the virtual text character to highlight
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            enableSnippets = true,
          }
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
        -- flutter commands settings
        flutter = {
          path = "flutter", -- path to flutter binary
          -- flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
          -- devtools = {
          --   open_cmd = "Telescope flutter commands", -- command to use to open flutter devtools
          -- },
        },
        closing_tags = {
          highlight = "ErrorMsg", -- highlight for the closing tag
          prefix = ">", -- character to use for close tag e.g. > Widget
          enabled = true -- set to false to disable
        },
      }
    end,
  },
  
  -- Dart syntax highlighting improvement
  {
    "dart-lang/dart-vim-plugin",
    lazy = false,
    ft = { "dart" },
  },
  
  -- Optional: Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "flutter-tools",
      })
    end,
  },
  
  -- DAP (Debugging) support - uncomment if you need debugging support
  -- {
  --   "mfussenegger/nvim-dap",
  --   optional = true,
  --   dependencies = {
  --     {
  --       "rcarriga/nvim-dap-ui",
  --       config = function()
  --         require("dapui").setup()
  --       end,
  --     },
  --   },
  -- },
}
