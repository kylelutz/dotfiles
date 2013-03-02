" c++ vim settings

" indentation
set smartindent
set autoindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

" hightlight column 80
set colorcolumn=80
hi ColorColumn guibg=#2d2d2d ctermbg=246

" hightlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
