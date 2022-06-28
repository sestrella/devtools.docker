local group = vim.api.nvim_create_augroup("packer_user_config", {})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "plugins.lua",
  callback = function()
    print("Calling PackerCompile")
    vim.cmd([[source <afile> | PackerCompile]])
  end,
  group = group,
})

local packer_bootstrap = false
local install_path = vim.fn.stdpath("data")
  .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use("cormacrelf/dark-notify")
  use("evanleck/vim-svelte")
  use("folke/which-key.nvim")
  use("hashivim/vim-terraform")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("khaveesh/vim-fish-syntax")
  use("neovim/nvim-lspconfig")
  use("neovimhaskell/haskell-vim")
  use("pearofducks/ansible-vim")
  use("ray-x/lsp_signature.nvim")
  use("rust-lang/rust.vim")
  use("tpope/vim-surround")

  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    requires = { "nvim-treesitter/nvim-treesitter" },
  })
  use({
    "nvim-treesitter/nvim-treesitter-context",
    requires = { "nvim-treesitter/nvim-treesitter" },
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  })
  use({ "hrsh7th/nvim-cmp", requires = { "hrsh7th/cmp-nvim-lsp" } })
  use({
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" },
  })
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  use({
    "ishan9299/nvim-solarized-lua",
    config = function()
      vim.g.solarized_termtrans = 1
      vim.cmd("colorscheme solarized")
    end,
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)