local status, abbrev_man = pcall(require, 'abbrev-man')
if (not status) then return end

abbrev_man.setup({
  load_natural_dictionaries_at_startup = true,
  load_programming_dictionaries_at_startup = true,
  natural_dictionaries = {
    ["nt_en"] = {}
  },
  programming_dictionaries = {
    ["pr_py"] = {}
  }
})
