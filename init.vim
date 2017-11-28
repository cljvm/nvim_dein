" vimrc files
"for s:path in split(globpath('<sfile>:h', 'nvim/*.vim'), "\n")
"  exe 'source ' . s:path
"endfor
"

let s:init_path = expand('<sfile>:p:h')

function! s:source_rc(...) abort
    for rc in a:000
        let rc_file = resolve(s:init_path . owl#separator() . 'rc' . owl#separator() . rc)
        if filereadable(rc_file)
            execute 'source' rc_file
        endif
    endfor
endfunction

call s:source_rc('dein.vim')

call dein#call_hook('source')
call dein#call_hook('post_source')

if has('vim_starting')
  call owl#enable_filetype()
endif

call s:source_rc('settings.vim', 'keymappings.vim', 'commands.vim')

