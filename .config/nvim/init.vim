"=======================================================
"=			    /  _/__  (_) /__  __(_)_ _             =
"=   			_/ // _ \/ / __/ |/ / /  ' \           =
"=			  /___/_//_/_/\__/|___/_/_/_/_/            =
"=                                                     =
"=======================================================

"=======================================================
"= 					   GENERAL 	  					   =
"=======================================================
set nocompatible
set nolist
set rnu

syntax on
"for plugin to load correctly
filetype plugin indent on
"fix common backspace problem
set backspace=indent,eol,start
"speed up scrolling
set ttyfast
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

set tabstop=4 shiftwidth=4
set mouse=a
set cursorline
set autoindent smartindent 
set clipboard+=unnamedplus

"relative line number
set number 
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

"=======================================================
"= 					   PLUGIN 	  					   =
"=======================================================
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
	Plug 'tpope/vim-fugitive' "Vim plugin for Git
	Plug 'preservim/nerdtree' "nerd tree
	Plug 'ryanoasis/vim-devicons' "Vim icon
	Plug 'neoclide/coc.nvim', {'branch': 'release'} "code completion
	Plug 'tpope/vim-commentary' "easy commentary
	Plug '907th/vim-auto-save' "auto save
	Plug 'xolox/vim-session' 	"session plugin
	Plug 'xolox/vim-misc' "depency for session plugin
	Plug 'vimwiki/vimwiki' "vimwiki
call plug#end()


"=======================================================
"= 					PLUGIN CONFIG 					   =
"=======================================================
"coc.vim
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
source $HOME/.config/nvim/plugConf/discordpresence.vim
"prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"code folding
"source $HOME/.config/nvim/plugConf/anyfold.vim
"auto save
source $HOME/.config/nvim/plugConf/autosave.vim
"vim-session
source $HOME/.config/nvim/plugConf/vimsession.vim

"=======================================================
"= 						KEY MAP 					   =
"=======================================================
let mapleader = ","
let g:mapleader = ","
"quick save
map <C-s> :w<cr>
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
"prevent delete to save in clipboard (dd will only delete without storing it)
"https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim/11993928
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
" cut command will now be ,d
nnoremap <leader>d "+d
nnoremap <leader>D "+D
vnoremap <leader>d "+d

"fix the identation visual block
vmap < <gv
vmap > >gv

" Alt + J/K moves selected lines down/up in visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv
nnoremap <A-up> :m .-2<CR>==
nnoremap <A-down> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==

"fix the Y yank 
nnoremap Y y$
"create Undo breakpoint
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ( (<C-g>u
inoremap ) )<C-g>u


"=======================================================
"= 					Custom script 					   =
"=======================================================
