-- TODO: this is a test todo
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- "NvChad/nvim-colorizer.lua",
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- config = function ()
    --   require("todo-comments").setup {
    --
    --   }
    -- end
    opts = {}, -- calls config() automatically
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = { "<leader>tt", "<cmd>TodoTelescope<cr>", desc = "Open Todos in Telescope" }, -- FIX: the shortcut does not work
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {},
    event = "User AstroFile",
  },
}
