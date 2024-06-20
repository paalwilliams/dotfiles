return {
    'stevearc/oil.nvim',
    opts = {
      float = {
        -- Padding around the floating window
        padding = 5,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
        winblend = 0,
      },
    },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
        default_file_explorer = true,
        vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    })
  
    end
  }
  