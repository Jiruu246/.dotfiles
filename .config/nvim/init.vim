"vim Identation config
set tabstop=4
"enable mouse
set mouse=a
"vim line number and cursor line color
set number
"hi LineNr term=bold ctermfg=DarkBlue
set cursorline
"hi CursorLineNr term=bold cterm=NONE ctermfg=LightBlue ctermbg=DarkBlue
"hi CursorLine term=NONE cterm=NONE
"vim plugin
call plug#begin('~/.vim/plugged')
"put any plugin here following Plug author/plugin-name
	Plug 'jiangmiao/auto-pairs' "Auto pairs for { [ (
	Plug 'junegunn/rainbow_parentheses.vim' "pair color bracket
	Plug 'norcalli/nvim-colorizer.lua' "hex color code
	Plug 'andweeb/presence.nvim' "discord presence
    Plug 'arcticicestudio/nord-vim' "colorscheme
call plug#end()

"vim plugin config
"Colorschemes
source $HOME/.config/nvim/themes/nord.vim
colorscheme nord
set termguicolors

"pair bracket config

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

"discord presence
let g:vimsence_editing_state = 'Workspace'
