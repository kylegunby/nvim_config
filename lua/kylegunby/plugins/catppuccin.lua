return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavor = 'frappe',
        background = {
          light = "latte",
          dark = "mocha",
        },
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        styles = {
          comments = { 'italic'}
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
