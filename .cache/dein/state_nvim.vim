if g:dein#_cache_version !=# 410 || g:dein#_init_runtimepath !=# '/var/home/pehunt/.vim,/var/home/pehunt/.config/nvim,/etc/xdg/nvim,/var/home/pehunt/.local/share/nvim/site,/var/home/pehunt/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/var/home/pehunt/.local/share/flatpak/exports/share/nvim/site/after,/var/home/pehunt/.local/share/nvim/site/after,/etc/xdg/nvim/after,/var/home/pehunt/.config/nvim/after,/usr/share/vim/vimfiles/,/var/home/pehunt/.vim/after,/var/home/pehunt/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/var/home/pehunt/.config/nvim/init.vim'])
if empty(s:plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#_ftplugin = s:ftplugin
let g:dein#_base_path = '/var/home/pehunt/.cache/dein'
let g:dein#_runtime_path = '/var/home/pehunt/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/var/home/pehunt/.cache/dein/.cache/init.vim'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/var/home/pehunt/.vim,/var/home/pehunt/.config/nvim,/etc/xdg/nvim,/var/home/pehunt/.local/share/nvim/site,/var/home/pehunt/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/home/pehunt/.cache/dein/repos/github.com/Shougo/dein.vim,/var/home/pehunt/.cache/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/var/home/pehunt/.cache/dein/.cache/init.vim/.dein/after,/usr/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/var/home/pehunt/.local/share/flatpak/exports/share/nvim/site/after,/var/home/pehunt/.local/share/nvim/site/after,/etc/xdg/nvim/after,/var/home/pehunt/.config/nvim/after,/usr/share/vim/vimfiles/,/var/home/pehunt/.vim/after'
filetype off
