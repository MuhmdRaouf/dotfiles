return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = true, -- defaults to false
    })
  end,
  keys = function()
    local nvim_tmux_navigation = require("nvim-tmux-navigation")
    return {
      { "<C-h>", nvim_tmux_navigation.NvimTmuxNavigateLeft },
      { "<C-j>", nvim_tmux_navigation.NvimTmuxNavigateDown },
      { "<C-k>", nvim_tmux_navigation.NvimTmuxNavigateUp },
      { "<C-l>", nvim_tmux_navigation.NvimTmuxNavigateRight },
      { "<C-\\>", nvim_tmux_navigation.NvimTmuxNavigateLastActive },
      { "<C-Space>", nvim_tmux_navigation.NvimTmuxNavigateNext },
    }
  end,
}
