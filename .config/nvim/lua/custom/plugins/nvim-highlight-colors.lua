return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup {
      render = 'background',
      -- render = 'foreground',
      -- render = 'virtual',

      virtual_symbol = '■',
      ---Set virtual symbol suffix (defaults to '')
      virtual_symbol_prefix = '',

      ---Set virtual symbol suffix (defaults to ' ')
      virtual_symbol_suffix = '',

      ---Set virtual symbol position()
      ---@usage 'inline'|'eol'|'eow'
      ---inline mimics VS Code style
      ---eol stands for `end of column` - Recommended to set `virtual_symbol_suffix = ''` when used.
      ---eow stands for `end of word` - Recommended to set `virtual_symbol_prefix = ' ' and virtual_symbol_suffix = ''` when used.
      virtual_symbol_position = 'eow',

      custom_colors = {
        { label = '%-%-theme%-primary%-color', color = '#0f1219' },
        { label = '%-%-theme%-secondary%-color', color = '#5a5d64' },
      },

      ---Highlight hex colors, e.g. '#FFFFFF'
      enable_hex = true,

      ---Highlight short hex colors e.g. '#fff'
      enable_short_hex = true,

      ---Highlight rgb colors, e.g. 'rgb(0 0 0)'
      enable_rgb = true,

      ---Highlight hsl colors, e.g. 'hsl(150deg 30% 40%)'
      enable_hsl = true,

      ---Highlight CSS variables, e.g. 'var(--testing-color)'
      enable_var_usage = true,

      ---Highlight named colors, e.g. 'green'
      enable_named_colors = true,

      ---Highlight tailwind colors, e.g. 'bg-blue-500'
      enable_tailwind = false,

      -- Exclude filetypes or buftypes from highlighting e.g. 'exclude_buftypes = {'text'}'
      exclude_filetypes = {},
      exclude_buftypes = {},
    }
    vim.keymap.set('n', '<leader>tc', ':HighlightColors Toggle<CR>', { desc = '[T]oggle [C]olors' })
  end,
}
-- TEST AREA
--  foreground = "#dcd7ba",
--  background = "#1f1f28",

--  cursor_bg = "#c8c093",
--  cursor_fg = "#c8c093",
--  cursor_border = "#c8c093",

--  selection_fg = "#c8c093",
--  selection_bg = "#2d4f67",

--  scrollbar_thumb = "#16161d",
--  split = "#16161d",

--  ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
--  brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
--  indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
