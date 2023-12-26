return {
  { "tpope/vim-fugitive" },
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", ":TmuxNavigateLeft<CR>", desc = "Move Left" },
      { "<C-l>", ":TmuxNavigateRight<CR>", desc = "Move Right" },
      { "<C-k>", ":TmuxNavigateUp<CR>", desc = "Move Up" },
      { "<C-j>", ":TmuxNavigateDown<CR>", desc = "Move Down" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier", "eslint_d" },
        typescript = { "prettier", "eslint_d" },
        vue = { "prettier", "eslint_d" },
        python = { "black" },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    dependencies = {
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_by_name = {
            "node_modules",
            "venv",
          },
          never_show = {
            "__pycache__",
          },
        },
      },
    },
  },
  { "tpope/vim-sleuth" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "vue",
      })
    end,
  },
  { "rose-pine/neovim", as = "rose-pine" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
