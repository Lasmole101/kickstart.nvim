-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'MeanderingProgrammer/render-markdown.nvim' },
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy-loaded
    config = function()
      -- Optional: Configure rust-analyzer settings here
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(client, bufnr)
            -- You can add your custom keymaps here (e.g., Go to Definition)
          end,
          default_settings = {
            ['rust-analyzer'] = {
              checkOnSave = { command = 'clippy' }, -- Use clippy for better linting
            },
          },
        },
      }
    end,
  },

  {
    { 'ThePrimeagen/vim-be-good' },
  },
}
