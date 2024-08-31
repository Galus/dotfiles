local get_random_fortune = function()
  local fortune = require('fortune').get_fortune()
  return table.concat(fortune, '\n')
  -- local keyset = {}
  -- for k in pairs(fortune) do
  --   table.insert(keyset, k)
  -- end
  -- random_elem = fortune[keyset[math.random(#keyset)]]
  -- return random_elem
end

local ascii_header = ' \
  ██████╗  █████╗ ██╗     ██╗   ██╗███████╗██╗   ██╗██╗███╗   ███╗ \
 ██╔════╝ ██╔══██╗██║     ██║   ██║██╔════╝██║   ██║██║████╗ ████║ \
 ██║  ███╗███████║██║     ██║   ██║███████╗██║   ██║██║██╔████╔██║ \
 ██║   ██║██╔══██║██║     ██║   ██║╚════██║╚██╗ ██╔╝██║██║╚██╔╝██║ \
 ╚██████╔╝██║  ██║███████╗╚██████╔╝███████║ ╚████╔╝ ██║██║ ╚═╝ ██║ \
  ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═'

local default_header = function()
  local hour = tonumber(vim.fn.strftime '%H')
  -- [04:00, 12:00) - morning, [12:00, 20:00) - day, [20:00, 04:00) - evening
  local part_id = math.floor((hour + 4) / 8) + 1
  local day_part = ({ 'evening', 'morning', 'afternoon', 'evening' })[part_id]
  local username = vim.loop.os_get_passwd()['username'] or 'USERNAME'

  return ('Good %s, %s'):format(day_part, username)
end

--local custom_header = ascii_header .. '\n' .. fortune
local custom_header = ascii_header .. '\n' .. default_header() .. '\n' .. get_random_fortune()

-- local footer = function()
--   local info = {}
--   local fortune = require('fortune').get_fortune()
--   info[1] = '  Neovim loaded ' .. vim.fn.strftime '%H:%M' .. ' on ' .. vim.fn.strftime '%d/%m/%Y' .. " '"
--   local footer = vim.list_extend(info, fortune)
--   return footer
-- end

local info = '  Neovim loaded ' .. vim.fn.strftime '%H:%M' .. ' on ' .. vim.fn.strftime '%d/%m/%Y' .. " '"
local default_footer = [[
Type query to filter items
<BS> deletes latest character from query
<Esc> resets current query
<Down/Up>, <C-n/p>, <M-j/k> move current item
<CR> executes action of current item
<C-c> closes this buffer]]
local custom_footer = info .. '\n' .. default_footer

local s = require 'mini.starter'
return {
  s.setup {
    header = custom_header,
    footer = custom_footer,
  },
}
