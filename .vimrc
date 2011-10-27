set t_Co=256
set ttymouse=xterm2
set mouse=a
set background=dark
set nowrap
syntax on
colorscheme jf_ir_black
set backspace=indent,eol,start
set number
set nocompatible
set nu
filetype indent on
filetype on
set autoindent
set ic
set hls
set lbr
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
set ai "Auto indent
set si "Smart indet
"set mouse=a
"set guifont=Monaco\ 11
set guifont=Monospace\ 11
set ignorecase 
"Ignore case when searching set smartcase set hlsearch 
"Highlight search things set incsearch 
"Make search act like search in modern browsers 
map <C-T> :NERDTreeToggle<cr> 
map <F3> :NERDTreeFind<cr> 
map <C-F> :FufFile */**/<cr> 
map <C-A> :tabn<cr>
"map <F3> :TlistToggle<cr> 
"map <C-Q> :NERDTreeFind<cr> 
let g:fuf_file_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
let g:fuf_coveragefile_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
let g:fuf_dir_exclude = '\v(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
