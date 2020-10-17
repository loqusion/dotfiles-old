" dein configurations.

let g:dein#auto_recache = 1
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1
let g:dein#notification_icon = '~/.config/nvim/signs/warn.png'

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

let s:dein_toml = '~/.config/nvim/rc/dein.toml'
let s:dein_lazy_toml = '~/.config/nvim/rc/deinlazy.toml'
"let s:dein_ft_toml = '~/.config/nvim/rc/deinft.toml'

call dein#begin(s:path, [
      \ expand('<sfile>'), s:dein_toml
      \ ])

call dein#load_toml(s:dein_toml, {'lazy': 0})
call dein#load_toml(s:dein_lazy_toml, {'lazy' : 1})
"call dein#load_toml(s:dein_ft_toml)

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  " Installation check.
  call dein#install()
endif
