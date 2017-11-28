" dein configurations.

let s:dein_cache_dir = expand('~/.cache/dein')
let s:dein_repo_dir = expand(s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim')

if has('vim_starting')
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone --depth 1 https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:dein#install_progress_type = 'title'
let g:dein#install_process_timeout = '1200'
let g:dein#types#git#clone_depth = 1
"let g:dein#enable_notification = 1
"let g:dein#notification_icon = '~/.vim/signs/warn.png'
let g:dein#install_log_filename = expand('~/dein.log')
let $DEIN_DIR = expand(expand('<sfile>:p:h') . '/dein')

if !dein#load_state(s:dein_cache_dir)
  finish
endif

call dein#begin(s:dein_cache_dir, expand('<sfile>'))

call dein#load_toml(expand('$DEIN_DIR/dein.toml'), {'lazy': 0})
call dein#load_toml(expand('$DEIN_DIR/deinlazy.toml'), {'lazy' : 1})
"call dein#load_toml(expand('$DEIN_DIR/deinft.toml'))

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  call dein#install()
endif

