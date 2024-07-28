require("cameron")

require("nvim-tree").setup({
  disable_netrw = true,
  update_focused_file = {
    enable = true,
  },
  hijack_cursor = true,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
})
