return {
  {
    "allaman/emoji.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- required for blink integration too
      enable_cmp_integration = true,
    },
    config = function(_, opts)
      require("emoji").setup(opts)
    end,
  },

  {
    "saghen/blink.cmp",
    optional = true,
    dependencies = { "allaman/emoji.nvim", "saghen/blink.compat" },
    opts = {
      sources = {
        default = { "emoji" },
        providers = {
          emoji = {
            name = "emoji",
            module = "blink.compat.source",
          },
        },
      },
    },
  },
}

