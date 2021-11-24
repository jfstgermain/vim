call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-git'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'skwp/greplace.vim'
"Plug 'lukaszkorecki/CoffeeTags'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/gitignore'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
"Plug 'mbbill/undotree'
Plug 'bling/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
"Plug 'kchmck/vim-coffee-script'
"Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'

" You can specify revision/branch/tag.
Plug 'Shougo/vimshell', { 'rev' : '3787e5' }

call plug#end()

" Required:
filetype plugin indent on

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

" snipmate
":imap <C-\> <Plug>snipMateNextOrTrigger
":smap <C-\> <Plug>snipMateNextOrTrigger
" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:airline_powerline_fonts = 1
let g:ctrlp_working_path_mode = 'ra'

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0


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

map <C-p> :GFile<cr>
map <C-o> :Files<cr>
