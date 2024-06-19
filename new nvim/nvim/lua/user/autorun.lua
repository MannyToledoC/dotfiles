local ran = false 

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {
    "*.py", "*.lua", "*.tsx", "*.jsx", "*.css", "*.scss", "*.go",
    "*.cs", "*.html", "*.js", "*.ts", "*.cshtml"
  },
  callback = function() 
      if ran == false then 
        --vim.o.statusline = " "
        --require("lualine").hide()
        require("true-zen.ataraxis").on()
        ran = true
      end
  end
})
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#000001", bg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", {})
-- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", {})

--[[

      vim.opt.laststatus = 0
      vim.api.nvim_set_hl(0 , 'Statusline', {link = 'Normal'})
      vim.api.nvim_set_hl(0 , 'StatuslineNC', {link = 'Normal'})
      --local str = string.repeat('-', vim.api.nvim_win_get_width(0))
      vim.opt.statusline = str
--]]
