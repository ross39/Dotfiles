require("toggleterm").setup {

  function(term)
    if term.direction == "horizontal" then
      term.size = 15
    elseif term.direction == "vertical" then
      term.size = vim.o.columns * 0.7
    end
  end,

  open_mapping = [[<c-t>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = zsh,

  float_opts = {
    border = 'curved',
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }

}
