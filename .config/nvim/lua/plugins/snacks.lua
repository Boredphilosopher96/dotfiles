return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>se",
      function()
        require("snacks").picker.smart({
          multi = { "buffers", "recent", "files" },
          format = "file", -- use `file` format for all sources
          matcher = {
            cwd_bonus = true, -- boost cwd matches
            frecency = true, -- use frecency boosting
            sort_empty = true, -- sort even when the filter is empty
          },
          transform = "unique_file",
        })
      end,
      mode = { "n" },
      desc = "Snacks smart search",
    },
  },
}
