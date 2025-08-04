return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")
        -- Fuzzy find in project
        -- Rather than have two bindings for git and non-git:
        vim.keymap.set("n", "<leader>pf", function()
            local ok = pcall(builtin.git_files, { show_untracked = true })
            if not ok then
                builtin.find_files()
            end
        end, {})

        -- Fuzzy find current word under cursor across project
        vim.keymap.set("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)

        -- Fuzzy find current word under cursor across project
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
