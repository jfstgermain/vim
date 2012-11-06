set t_Co=256
set ttymouse=xterm2
set mouse=a
set background=dark
set nowrap
syntax on
colorscheme jf_ir_black
"colorscheme mustang
set backspace=indent,eol,start
set number
set nocompatible
set nu
filetype plugin indent on
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
set ignorecase
set smartcase
set hlsearch
set incsearch
set undolevels=1000
" Do not save backups and swp files!!
set nobackup
set noswapfile
" Display whitespaces
set cursorline
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
autocmd filetype html,xml,ejs set listchars-=tab:>.
"set mouse=a
"set guifont=Monaco\ 11
set guifont=Monospace\ 11
set ignorecase 
set pastetoggle=<F2>
"let g:copypath_copy_to_unnamed_register = 1
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
call pathogen#infect()

au BufRead,BufNewFile *.ejs set filetype=html
nnoremap ; :

vmap Q gq
nmap Q gqap

" Masochistic mappings:
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" jumps to the next row in the editor if same wrapped line
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Ignore case when searching set smartcase set hlsearch 
"Highlight search things set incsearch 
"Make search act like search in modern browsers 
map <F3> :NERDTreeToggle \| :silent NERDTreeMirror<cr> 
map <C-F12> :NERDTreeFind<cr> 
map <C-F> :FufFile */**/<cr> 
map <C-A> :tabn<cr>

"let NERDTreeIgnore = ['\.js$']
let NERDTreeHighlightCursorline = 1
"map <F3> :TlistToggle<cr> 
"map <C-Q> :NERDTreeFind<cr> 
"let g:fuf_file_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
"let g:fuf_coveragefile_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
"let g:fuf_dir_exclude = '\v(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules|exports))($|[/\\])'
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class|png|gif|jpg|jar)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|node_modules|classes|exports|gef.*|perspectives.*|gsr.*|jacf.*))($|[/\\])'
let g:fuf_coveragefile_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
let g:fuf_dir_exclude = '\v\~$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|node_modules|classes|exports|gef.*|perspectives.*|gsr.*|jacf.*))($|[/\\])'
