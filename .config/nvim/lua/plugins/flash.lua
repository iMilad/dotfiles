return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  -- @type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>fs", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>fS", mode = { "n" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
