-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

require("config.icons")
require("config.keymaps")
require("config.options")
require("config.fnkeys")
