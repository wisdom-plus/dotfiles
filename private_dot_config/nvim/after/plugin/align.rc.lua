local status, align = pcall(require, 'align')
if (not status) then return end

local NS = { noremap = true, silent = true }

vim.keymap.set('x' , 'aa', function() align.align_to_char(1,true)             end, NS)
vim.keymap.set('x' , 'as', function() align.align_to_char(2,true)             end, NS)
vim.keymap.set('x' , 'aw', function() align.align_to_string(false,true, true) end, NS)
vim.keymap.set('x' , 'ar', function() align.align_to_string(true,true, true)  end, NS)

-- Example gawip to align a paragraph to a string, looking left and with previews
vim.keymap.set(
    'n',
    'gaw',
    function()
        local a = align
        a.operator(
            a.align_to_string,
            { is_pattern = false, reverse = true, preview = true }
        )
    end,
    NS
)

-- Example gaaip to aling a paragraph to 1 character, looking left
vim.keymap.set(
    'n',
    'gaa',
    function()
        local a = align
        a.operator(
            a.align_to_char,
            { length = 1, reverse = true }
        )
    end,
    NS
)
