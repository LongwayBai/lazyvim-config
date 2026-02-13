return {
    "folke/sidekick.nvim",
    opts = {
        cli = {
            win = {
                layout = "bottom", ---@type "float" | "bottom" | "right" | "left" | "top"
            }
        },
        tools = {
            codex = { cmd = { "codex" } },
        }
    }
}
