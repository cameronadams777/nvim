-- Telescope configurations
local telescope = require('telescope')
telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-p>"] = require('telescope.actions.layout').toggle_preview,
      },
    },
    preview = {
      hide_on_startup = true,
    },
  },
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

