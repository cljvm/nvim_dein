autocmd BufWinLeave *.* silent! mkview " Make Vim save view (state) (folds, cursor, etc)
autocmd BufWinEnter *.* silent! loadview " Make Vim load view (state) (folds, cursor, etc)

autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

autocmd CompleteDone * silent! pclose! " 补全完成后，关闭预览窗口（preview window）

augroup trailing " Only show trailing whitespace when not in insert mode
    autocmd!
    autocmd InsertEnter * :set listchars-=trail:⌴
    autocmd InsertLeave * :set listchars+=trail:⌴
augroup END

autocmd FileType javascript,html,python set expandtab | set shiftwidth=2 | set softtabstop=2
