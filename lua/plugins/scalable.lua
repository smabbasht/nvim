return {
    {
        "scalameta/nvim-metals",
        ft = { "scala", "sbt", "java" },
        config = function()
            local metals = require("metals")
            metals.initialize_or_attach({
                settings = {
                    javaHome = "/usr/lib/jvm/java-11-openjdk-amd64",
                },
            })
        end,
    },
}
