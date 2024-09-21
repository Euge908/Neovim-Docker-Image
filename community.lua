-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua", enabled = true },
  -- import/override with your plugins folder

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.completion.copilot-lua", enabled = true },
  -- these packs can set up things such as Treesitter, Language Servers, additional language specific plugins, and more!
  { import = "astrocommunity.pack.python", enabled = true },
  { import = "astrocommunity.pack.cpp", enabled = true },
  { import = "astrocommunity.pack.yaml", enabled = true },
  { import = "astrocommunity.pack.rust", enabled = true },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    },
  },
}
