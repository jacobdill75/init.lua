return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({})

            local cmp = require("cmp")
            local autopairs = require("nvim-autopairs.completion.cmp")

            cmp.event:on("confirm_done", autopairs.on_confirm_done())
        end
    },

    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "javascriptreact", "typescriptreact", "xml" },
        config = function()
            require("nvim-ts-autotag").setup({})

            local cmp = require("cmp")
            local autopairs = require("nvim-autopairs.completion.cmp")

            cmp.event:on("confirm_done", autopairs.on_confirm_done())
        end
    }
}
