return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python"
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup {
      adapters = {
        require("neotest-python") ({
          runner = "pytest",
        })
      }
    }
  end
}
