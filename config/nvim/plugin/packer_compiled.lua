-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/cassiechew/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?.lua;/Users/cassiechew/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?/init.lua;/Users/cassiechew/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?.lua;/Users/cassiechew/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/cassiechew/.cache/nvim/packer_hererocks/2.1.1748459687/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  catppuccin = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  cpsm = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  harpoon = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-nerdfont"] = {
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/vim-nerdfont",
    url = "https://github.com/lambdalisue/vim-nerdfont"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3€5\2\3\0L\2\2\0X\2\2€5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\5Ÿ\v\1\0\17\0?\3p6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0009\f\26\0B\f\1\2=\f\27\vB\t\2\0024\n\3\0009\v\28\0003\r\29\0B\v\2\2>\v\1\n9\v\30\0B\v\1\0?\v\0\0009\v\18\0005\r \0009\14\20\0005\16\31\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2!\0B\2\1\2>\2\1\0019\2\"\0B\2\1\0?\2\0\0009\2#\0009\4$\0005\6%\0009\a&\0B\a\1\2=\a'\6=\1(\0065\a)\0009\b*\0B\b\1\2>\b\2\a9\b+\0005\n,\0005\v-\0=\v.\nB\b\2\0?\b\2\0=\a/\0065\a0\0009\b1\0B\b\1\0?\b\0\0=\a2\6B\4\2\0A\2\0\0029\0033\0005\0054\0=\1(\0055\0065\0009\a6\0B\a\1\2>\a\2\6=\6/\0055\0067\0009\a8\0B\a\1\0?\a\0\0=\0062\5B\3\2\0029\4\6\0'\0069\0009\a:\0005\t;\0=\2<\t=\3=\t=\3>\tB\a\2\0A\4\1\1K\0\1\0\15substitute\6/\6:\1\0\3\6:\0\15substitute\0\6/\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\4\tleft\0\nright\0\16highlighter\0\14separator\t Â· \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6h\bïœ£\6+\bï£ª\6a\bïœ“\1\0\2\nflags\n a + \nicons\0\27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\5\18empty_message\0\vborder\frounded\nright\0\16highlighter\0\tleft\0\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\1\fpattern\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\17fuzzy_filter\19lua_fzy_filter\1\0\2\17fuzzy_filter\0\nfuzzy\3\2\21cmdline_pipeline\1\0\1\rpipeline\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\2\23skip_cmdtype_check\3\1\fpattern\0\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\3\17file_command\0\ffilters\0\16dir_command\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\1\nmodes\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5€€À™\4\3€€À™\4\a€€À™\4\0" },
    loaded = true,
    path = "/Users/cassiechew/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nj\0\2\6\0\5\0\r6\2\0\0009\2\1\2\18\4\1\0'\5\2\0B\2\3\2\n\2\0\0X\2\3€5\2\3\0L\2\2\0X\2\2€5\2\4\0L\2\2\0K\0\1\0\1\3\0\0\vfdfind\b-tf\1\4\0\0\vfdfind\b-tf\a-H\6.\tfind\vstring \0\2\3\0\1\0\6\6\1\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\5Ÿ\v\1\0\17\0?\3p6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0004\4\3\0009\5\b\0009\a\t\0005\t\v\0003\n\n\0=\n\f\t5\n\r\0=\n\14\t5\n\15\0=\n\16\tB\a\2\0029\b\17\0005\n\23\0009\v\18\0005\r\19\0009\14\20\0005\16\21\0B\14\2\2=\14\22\rB\v\2\2=\v\a\nB\b\2\0029\t\24\0005\v\25\0009\f\26\0B\f\1\2=\f\27\vB\t\2\0024\n\3\0009\v\28\0003\r\29\0B\v\2\2>\v\1\n9\v\30\0B\v\1\0?\v\0\0009\v\18\0005\r \0009\14\20\0005\16\31\0B\14\2\2=\14\22\rB\v\2\0A\5\4\0?\5\1\0B\1\3\0014\1\3\0009\2!\0B\2\1\2>\2\1\0019\2\"\0B\2\1\0?\2\0\0009\2#\0009\4$\0005\6%\0009\a&\0B\a\1\2=\a'\6=\1(\0065\a)\0009\b*\0B\b\1\2>\b\2\a9\b+\0005\n,\0005\v-\0=\v.\nB\b\2\0?\b\2\0=\a/\0065\a0\0009\b1\0B\b\1\0?\b\0\0=\a2\6B\4\2\0A\2\0\0029\0033\0005\0054\0=\1(\0055\0065\0009\a6\0B\a\1\2>\a\2\6=\6/\0055\0067\0009\a8\0B\a\1\0?\a\0\0=\0062\5B\3\2\0029\4\6\0'\0069\0009\a:\0005\t;\0=\2<\t=\3=\t=\3>\tB\a\2\0A\4\1\1K\0\1\0\15substitute\6/\6:\1\0\3\6:\0\15substitute\0\6/\0\17renderer_mux\rrenderer\19wildmenu_index\1\2\0\0\6 \21wildmenu_spinner\1\4\0\0\6 \0\6 \1\0\4\tleft\0\nright\0\16highlighter\0\14separator\t Â· \22wildmenu_renderer\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\nicons\1\0\3\6h\bïœ£\6+\bï£ª\6a\bïœ“\1\0\2\nflags\n a + \nicons\0\27popupmenu_buffer_flags\23popupmenu_devicons\1\2\0\0\6 \16highlighter\18empty_message)popupmenu_empty_message_with_spinner\1\0\5\18empty_message\0\vborder\frounded\nright\0\16highlighter\0\tleft\0\27popupmenu_border_theme\23popupmenu_renderer\24lua_fzy_highlighter\22pcre2_highlighter\1\0\1\fpattern\0\1\0\1\22start_at_boundary\3\0\fhistory\0\ncheck\17fuzzy_filter\19lua_fzy_filter\1\0\2\17fuzzy_filter\0\nfuzzy\3\2\21cmdline_pipeline\1\0\1\rpipeline\0\fpattern\1\0\1\22start_at_boundary\3\0\25python_fuzzy_pattern\1\0\2\23skip_cmdtype_check\3\1\fpattern\0\27python_search_pipeline\24substitute_pipeline\ffilters\1\2\0\0\16cpsm_filter\16dir_command\1\3\0\0\afd\b-td\17file_command\1\0\3\17file_command\0\ffilters\0\16dir_command\0\0 python_file_finder_pipeline\vbranch\rpipeline\15set_option\nmodes\1\0\1\nmodes\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5€€À™\4\3€€À™\4\a€€À™\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
