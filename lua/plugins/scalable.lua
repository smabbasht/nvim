return {
  {
    "scalameta/nvim-metals",
    ft = { "scala", "sbt", "java" },
    config = function()
      local metals = require("metals")
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "scala", "sbt", "java" },
        callback = function()
          metals.initialize_or_attach({
            settings = {
              javaHome = "/usr/lib/jvm/java-11-openjdk-amd64",
            },
          })
        end,
      })
    end,
  },
}
