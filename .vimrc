if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'tpope/vim-git'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'skwp/greplace.vim'
"NeoBundle 'lukaszkorecki/CoffeeTags'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'vim-scripts/gitignore'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'mbbill/undotree'
NeoBundle 'bling/vim-airline'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'elixir-lang/vim-elixir'
"NeoBundle 'honva/vim-snippets'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set t_Co=256
set ttymouse=xterm2
set mouse=a
set background=dark
set nowrap
syntax on
"colorscheme jf_ir_black
colorscheme sorcerer
"colorscheme mustang
"colorscheme codeschool
"colorscheme ir_black 

set backspace=indent,eol,start
set number
set nocompatible
set nu
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
"set nobackup
set noswapfile
" Display whitespaces
set cursorline
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
autocmd filetype html,xml,ejs set listchars-=tab:>.
"set mouse=a
set guifont=Monaco\ 12
"set guifont=Monospace\ 11
set ignorecase
set pastetoggle=<F2>
"let g:copypath_copy_to_unnamed_register = 1
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
"call pathogen#infect()

au BufRead,BufNewFile *.ejs set filetype=html
nnoremap ; :

vmap Q gq
nmap Q gqap

" Masochistic mappings:
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" Fix so fugitive can handle .vimrc symlinks...
noremap <leader>ev :execute 'e ' . resolve(expand($MYVIMRC))<CR>

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

let g:airline_powerline_fonts = 1
let g:ctrlp_working_path_mode = 'ra'

"let NERDTreeIgnore = ['\.js$']
let NERDTreeShowHidden=0
let NERDTreeHighlightCursorline = 1
"map <F3> :TlistToggle<cr>
"map <C-Q> :NERDTreeFind<cr>
"let g:fuf_file_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
"let g:fuf_coveragefile_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
"let g:fuf_dir_exclude = '\v(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules|exports))($|[/\\])'
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class|png|gif|jpg|jar)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|node_modules|classes|exports|gef.*|perspectives.*|gsr.*|jacf.*))($|[/\\])'
let g:fuf_coveragefile_exclude = '\v\~$|\.(class|png|gif|jpg|jar|o|exe|dll|bak|orig|swp)$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|classes|node_modules))($|[/\\])'
let g:fuf_dir_exclude = '\v\~$|(^|[/\\])(\.(hg|git|bzr|svn)|(bytecode|node_modules|classes|exports|gef.*|perspectives.*|gsr.*|jacf.*))($|[/\\])'
"call pathogen#infect()
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"au FileType coffee IndentGuidesEnable
"let indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey   ctermbg=236
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey   ctermbg=237
"let indent_guides_color_change_percent = 20
"let indent_guides_guide_size = 2
"let g:CoffeeAutoTagIncludeVars=1

autocmd FileType coffee setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*#'
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable


