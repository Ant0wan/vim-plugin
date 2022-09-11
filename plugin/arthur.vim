" ******** VIM CONFIG *********
set comments=sl:/*,mb:**,elx:*/                   "set comments style to 42's

set noswapfile                                    "set disable swap file
set autoread                                      "reload files changed outside vim

set noerrorbells                                  "do not make noise
set novisualbell                                  "do not blink

syntax on                                         "set syntac coloring
set nu                                            "set numbers on lines
"set rnu                                          "set moving counter of number on lines
"set mouse=a                                      "set mouse on verbose mode

set showcmd                                       "show command completion
set autochdir                                     "automatic cd
set statusline+=%#LineNr#                         "set status bar color
set statusline+=\ %f                              "set status bar color
set laststatus=2                                  "constant display of filename

" Start vertical explorer
let g:netrw_banner = 0                            "remove the banner
let g:netrw_browse_split = 4                      "change how files are opened
let g:netrw_liststyle = 3                         "change the directory view in netrw
let g:netrw_winsize = 15                          "set the width of the directory explorer
set fillchars+=vert:\▏                            "set vertical separator characters
highlight VertSplit cterm=NONE ctermfg=Darkblue   "set split bar colors

augroup VerticalExplorer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


" Change color for text when extra whitespaces
highlight ExtraWhitespace ctermbg=LightYellow
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\zs\t\+/
match ExtraWhitespace /^\t*\zs \+/
match ExtraWhitespace /\s\+$/

filetype plugin indent on                         "auto indent depending on file ext

" Change color for text going after the column 80
highlight OverLength ctermfg=red guifg=red
2match OverLength /\%>80v.*\%<82v/


" ******* DOC ********
" Parameters to let g:netrw_browse_split = 4
" 1 : open files in a new horizontal split,
" 2 : open files in a new vertical split,
" 3 : open files in a new tab,
" 4 : open in previous window
"
" Command to LS in from vim :  ':! ls -lF'

" **** Additional File Format *****
" JSON
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
