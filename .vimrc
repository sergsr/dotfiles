"""""""""""""""""""""""""""" General Settings """"""""""""""""""""""""""""
set nocompatible noerrorbells
set ruler
set backspace=2
set nohlsearch
set incsearch
set rnu

" Tabs are set to be 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab

" TODO: autocmd tab settings. only really need a different one for assembly....

" word wrap for normal text files
if has('autocmd')
  au BufRead,BufNewFile *.txt set wm=2 tw=80
endif

if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

syntax enable
colorscheme distinguished

" Don't go over 80 lines or have trailing whitespace
match Error /\%81v.\+\|\s\+$/

""""""""""""""""""""""""""""""""  Voodoo """""""""""""""""""""""""""""""""""""""

" Ctrl-N: Relative Numbering -> Line Numbering -> No Numbering -> Relative....
func! NumberToggle()
  if(&relativenumber == 1)
    set nu
    set nornu
  elseif(&number == 1)
    set nonu
    set nornu
  else
    set rnu
    set nonu
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Ctrl-P: Generate and view pdf when working on a tex file
nnoremap <C-p> :w<CR> :!pdflatex %<CR>

"TAB in insert-mode: write a normal tab, or tab-complete word being written
"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
