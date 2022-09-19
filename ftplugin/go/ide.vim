let g:netrw_altv = 1
let g:netrw_banner = 0                            "remove the banner
let g:netrw_browse_split = 4                      "change how files are opened
let g:netrw_liststyle = 3                         "change the directory view in netrw
let g:netrw_preview = 1
let g:netrw_winsize = 15                          "set the width of the directory explorer

set fillchars+=vert:\▏                            "set vertical separator characters

highlight VertSplit cterm=NONE ctermfg=Darkgrey

augroup VerticalExplorer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END

filetype plugin indent on                         "auto indent depending on file ext
