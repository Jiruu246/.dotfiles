"vim Identation config
set tabstop=4
"enable mouse
set mouse=a
"vim line number and cursor line color
set number
hi LineNr term=bold ctermfg=DarkBlue
set cursorline
hi CursorLineNr term=bold cterm=NONE ctermfg=LightBlue ctermbg=DarkBlue
hi CursorLine term=NONE cterm=NONE
"vim plugin
call plug#begin('~/.vim/plugged')
"put any plugin here following Plug author/plugin-name
	Plug 'jiangmiao/auto-pairs' "Auto pairs for { [ (
	Plug 'sheerun/vim-polyglot' "Better syntax support
	Plug 'junegunn/rainbow_parentheses.vim' "pair color bracket
	Plug 'vimsence/vimsence' "discord precence

call plug#end()

"vim plugin config
"Colorizer config

let g:colorizer_skip_comments=1

"pair bracket config

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

"discord presence
let g:vimsence_editing_state = 'Workspace'
