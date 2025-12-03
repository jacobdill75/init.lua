return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local autopairs = require("nvim-autopairs")
            local rule = require("nvim-autopairs.rule")

            autopairs.setup({})

            autopairs.add_rules({
                rule("{", "}", {"cpp", "java", "c", "h", "hpp"})
                    :replace_endpair(function(opts)
                        if opts.line:match("^%s*class%s+")
                            or opts.line:match("^%s*struct%s+")
                            or opts.line:match("^%s*enum%s+") then
                            return "};"
                        end
                        return "}"
                    end)
            })

            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")

            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    },

    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "javascriptreact", "typescriptreact", "xml" },
        config = function()
            require("nvim-ts-autotag").setup({})

            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")

            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    }
}
