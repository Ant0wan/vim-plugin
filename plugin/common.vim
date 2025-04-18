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


" Display Netrw on demand
let g:netrw_altv = 0
let g:netrw_banner = 0                            "remove the banner
let g:netrw_browse_split = 3                      "change how files are opened
let g:netrw_liststyle = 3                         "change the directory view in netrw
let g:netrw_preview = 1
let g:netrw_winsize = 15                          "set the width of the directory explorer
set fillchars+=vert:\▏                            "set vertical separator characters
highlight VertSplit cterm=NONE ctermfg=White      "set separator background color
"highlight LineNR ctermfg=White                    "set line number color
" set shortcut to open Netrw
nnoremap <leader>] :20Lexplore<CR>
augroup netrw_statusline
  autocmd!
  autocmd FileType netrw setlocal statusline=%#LineNr#\ %{fnamemodify(getcwd(),':~')}
augroup END

" Lint files
" set shortcut to remove trailing whitespace
nnoremap <Leader><Space> :%s/\s\+$//e<CR>
