if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/pehunt/.vim,/home/pehunt/.config/nvim,/etc/xdg/nvim,/home/pehunt/.local/share/nvim/site,/home/pehunt/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/pehunt/.local/share/flatpak/exports/share/nvim/site/after,/home/pehunt/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/pehunt/.config/nvim/after,/home/pehunt/.vim/after,/home/pehunt/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/pehunt/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/pehunt/.cache/dein'
let g:dein#_runtime_path = '/home/pehunt/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/pehunt/.cache/dein/.cache/init.vim'
let &runtimepath = '/home/pehunt/.vim,/home/pehunt/.config/nvim,/etc/xdg/nvim,/home/pehunt/.local/share/nvim/site,/home/pehunt/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/pehunt/.cache/dein/repos/github.com/Shougo/dein.vim,/home/pehunt/.cache/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/pehunt/.cache/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/pehunt/.local/share/flatpak/exports/share/nvim/site/after,/home/pehunt/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/pehunt/.config/nvim/after,/home/pehunt/.vim/after'
filetype off
