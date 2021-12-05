"vim config
set tabstop=4 shiftwidth=4
set mouse=a
set number
set cursorline
set autoindent smartindent 
set clipboard+=unnamedplus

"vim Plug
call plug#begin('~/.vim/plugged')
"put any plugin here following Plug author/plugin-name
	Plug 'jiangmiao/auto-pairs' "Auto pairs for { [ (
	Plug 'junegunn/rainbow_parentheses.vim' "pair color bracket
	Plug 'norcalli/nvim-colorizer.lua' "hex color code
	Plug 'andweeb/presence.nvim' "discord presence
    Plug 'arcticicestudio/nord-vim' "colorscheme
	Plug 'vim-airline/vim-airline' "vim status bar
	Plug 'arcticicestudio/nord-vim' "status bar theme
	Plug 'vim-airline/vim-airline-themes' "theme for vim airline
	Plug 'tpope/vim-fugitive' "Vim plugin for Git
	Plug 'preservim/nerdtree' "nerd tree
	Plug 'ryanoasis/vim-devicons' "Vim icon
	Plug 'neoclide/coc.nvim', {'branch': 'release'} "code completion
call plug#end()

"vim plugin config
"Coc.vim
source $HOME/.config/nvim/plugConf/coc.vim

"Colorschemes
source $HOME/.config/nvim/themes/nord.vim
colorscheme nord
set termguicolors

"Vim airline config
source $HOME/.config/nvim/themes/airline.vim

"NERDTree config
source $HOME/.config/nvim/plugConf/nerdtree.vim

"pair bracket config
source $HOME/.config/nvim/plugConf/pairbracket.vim

"discord presence
let g:vimsence_editing_state = 'Workspace'

"Shortcut map for navigate between open windows
map <C-h> <C-w>h
map <C-left> <C-w>h
map <C-l> <C-w>l
map <C-right> <C-w>l
map <C-j> <C-w>j
map <C-down> <C-w>j
map <C-k> <C-w>k
map <C-up> <C-w>k
"Navigate between tabs
map <A-Left> <C-PageUp>
map <A-Right> <C-PageDown>
"Resize window
map <C-S-j> :res -5<cr>
map <C-S-k> :res +5<cr>
map <C-S-h> :vertical res -5<cr>
map <C-S-l> :vertical res +5<cr>
