return {
  {
    "https://gitlab.com/itaranto/plantuml.nvim",
    version = "*",
    event = "VimEnter",
    config = function()
      require("plantuml").setup {
        renderer = {
          type = "image",
          options = {
            split_cmd = "vsplit",
            prog = "feh",
            dark_mode = false,
            format = nil, -- Allowed values: nil, 'png', 'svg'.
          },
        },
        render_on_write = true,
      }
    end,
  },
}
