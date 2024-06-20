return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      local wk = require("which-key")
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      vim.keymap.set("n", "<leader>", vim.cmd.WhichKey)
    end,
  }
  
