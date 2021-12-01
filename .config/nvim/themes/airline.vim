" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

"status line config
let g:airline_section_z = ' %p%%%#__accent_bold#  %l%#__restore__#%#__accent_bold#:%L%#__restore__#'
"default value:
"%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#

"git branch
"let g:airline#extensions#hunks#enabled=1
"let g:airline#extensions#branch#enabled=1

"Always show tabs
set showtabline=2
