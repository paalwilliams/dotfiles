return  {
    "startup-nvim/startup.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup()
      require"startup".create_mappings({
	      ["<leader>pv"]="<cmd>Telescope find_files<CR>",
      })
    end
  }
  
