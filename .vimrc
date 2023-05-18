if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
        if filereadable("cscope.out")
                 cs add cscope.out
                         " else add database pointed to by environment
                             elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
endif

nmap <C-\>s :cs find s =expand("")
nmap <C-\>g :cs find g =expand("")
nmap <C-\>c :cs find c =expand("")
nmap <C-\>t :cs find t =expand("")
nmap <C-\>e :cs find e =expand("")
nmap <C-\>f :cs find f =expand("")
nmap <C-\>i :cs find i ^=expand("")$
nmap <C-\>d :cs find d =expand("")

" CAPITAL LETTERS ALLOWED " 
command WQ wq
command Wq wq
command W w
command Q q

" TAB STOP "
" set nohlsearch
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" set expandtab
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set sidescroll=1

" NO WRAP " 
set nowrap

" CLIPBOARD "

" TAB COMPLETE "
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction" TAB COMPLETE"

inoremap <tab> <c-r>=Smart_TabComplete()<CR>

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))

call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
call dein#add('preservim/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('fatih/vim-go')
call dein#add('rust-lang/rust.vim')
" run `:call dein#install()`

call dein#end()
call dein#save_state()

filetype plugin indent on
syntax enable

" SUBLIME COLOR "
syntax enable
set background=dark
colorscheme monokai

map <F5> :NERDTreeToggle<CR>

" ref: https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100
set mmp=5000
