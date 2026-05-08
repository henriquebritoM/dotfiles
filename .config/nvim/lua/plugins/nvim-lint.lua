--some debian fuckery with names:w
require('lint').linters.jsonlint.cmd = 'jsonlint-php'

require('lint').linters_by_ft = { --some of these need to be installed from package manager
  rust = {'clippy'},
  c = {'cppcheck'},
  cpp = {'cppcheck'},
--  go = {'golanglinter'}, --not in apt repo
--  go = {'golangci-lint'},
  lua = {'luacheck'},
  -- those dumb linters require npm afaik
  -- css = {'stylelint'},
  -- html = {'htmlhint'},
  -- javascript = {'eslint_d'},
  -- typescript = {'eslint_d'},
  sh = {'spellcheck'},
  json = {'jsonlint'},
  yaml = {'yamllint'},
  toml = {'taplo'},
}

--[[
-- Instaling the linters: This should work on debian based OS
sudo apt install cppchecker shellcheck jsonlint yamllint
sudo apt install lua-check
cargo install taplo-cli
]]--

-- lints on close, see autocmd
