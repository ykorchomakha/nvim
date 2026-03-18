local harpoon = require("harpoon")

harpoon:setup()

local keymap = require("conf.keymap")

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", keymap['harpoon_add'], function() harpoon:list():add() end)
vim.keymap.set("n", keymap['harpoon_quick_menu'], function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", keymap['harpoon_telescope'], function() toggle_telescope(harpoon:list()) end)
vim.keymap.set("n", keymap['harpoon_previous'], function() harpoon:list():prev() end)
vim.keymap.set("n", keymap['harpoon_next'], function() harpoon:list():next() end)

