"---------------------------------------------------------------------------
" denite.nvim
"

if executable('rg')
  call denite#custom#var('file_rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg', '--threads', '1'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'default_opts',
        \ ['--vimgrep', '--no-heading'])
else
  call denite#custom#var('file_rec', 'command',
        \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif

call denite#custom#source('file_old', 'matchers',
      \ ['matcher_fuzzy', 'matcher_project_files'])
if has('nvim')
  call denite#custom#source('file_rec,grep', 'matchers',
        \ ['matcher_cpsm'])
endif
call denite#custom#source('file_old', 'converters',
      \ ['converter_relative_word'])

call denite#custom#map('insert', '<C-j>',
      \ '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>',
      \ '<denite:move_to_previous_line>', 'noremap')
"call denite#custom#map('normal', 'r',
"      \ '<denite:do_action:quickfix>', 'noremap')

call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

" call denite#custom#option('default', 'prompt', '>')
" call denite#custom#option('default', 'short_source_names', v:true)
call denite#custom#option('default', {
      \ 'prompt': '>', 'short_source_names': v:true
      \ })

let s:menus = {}
let s:menus.work = {
      \ 'description': '工作',
      \ }
let s:work_base_path = 'E:\share\work\stm\ecpweb\WebContent\page\stm\'
let s:menus.work.file_candidates = [
      \ ['    > 转账汇款', s:work_base_path . 'transfer'],
      \ ['    > 回单补打', s:work_base_path . 'voucher'],
      \ ['    > 信用卡', s:work_base_path . 'creditCard3'],
      \ ['    > 外汇买卖', s:work_base_path . 'foreignExchange\forexTransaction'],
      \ ['    > 钞折汇', s:work_base_path . 'foreignExchange\cashToSpot'],
      \ ['    > 结售汇', s:work_base_path . 'foreignExchange\settlement'],
      \ ['    > 账户商品', s:work_base_path . 'accProduct'],
      \ ]
call denite#custom#var('menu', 'menus', s:menus)

call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

