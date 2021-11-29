" nord.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
	autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
  augroup END
endif
