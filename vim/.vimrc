"" General
set nocompatible noerrorbells

"" Search
set nohlsearch
set incsearch
set ignorecase smartcase
nmap \h :hlsearch<CR>

"" Movement
nmap j gj
nmap k gk
set backspace=2

"" Whitespace
set shiftwidth=2
set tabstop=2
set expandtab

if has('autocmd')
  au BufRead,BufNewFile *.txt set wm=2 tw=80
endif

"" Decoration
" Don't go over 80 lines or have trailing whitespace
syntax enable
colorscheme distinguished
match Error /\%81v.\+\|\s\+$/

set ruler
set rnu
set nu

" Ctrl-N: Relative Numbering -> Line Numbering -> No Numbering -> Relative....
func! NumberToggle()
  if(&relativenumber == 1)
    set nonu
    set nornu
  elseif(&number == 1)
    set nonu
    set nornu
  else
    set rnu
    set nu
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

"" Compilation
" Ctrl-P: Generate and view pdf when working on a tex file
nnoremap <C-p> :w<CR> :!pdflatex %<CR>
