filetype plugin indent on

set background=dark

"gui thingy
if has("gui_running") 
  " crude hack to make it maximized
  " works in gnome 3.4
  set columns=166 lines=44
  winpos 0 0
  colo bensday
  set guicursor+=a:blinkon0
  set guioptions-=T
  set guioptions-=t
  set cursorline
endif

set number
set laststatus=2

set tabstop=2
set expandtab
set shiftwidth=2
set sts=2
set ignorecase
set smartcase
set showmatch
set showcmd 

"opening buffer in tab
":tab sball
":set switchbuf=usetab,newtab

" jump to last line
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" pathogen plugin gives us bundles
call pathogen#infect()

" NERDTree setting
let NERDTreeWinSize=20

" Taglist setting
let Tlist_Use_Right_Window=1
