"*****************************************************************************
"" NeoBundle core
"*****************************************************************************

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"

  " Run shell script if exist on custom select language

  "silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/scrooloose/syntastic/scrooloose/syntastic.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/kien/ctrlp.vim/kien/ctrlp.vim.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/majutsushi/tagbar/majutsushi/tagbar.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-rails/tpope/vim-rails.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/Lokaltog/vim-easymotion/Lokaltog/vim-easymotion.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/davidhalter/jedi-vim/davidhalter/jedi-vim.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/Yggdroot/indentLine/Yggdroot/indentLine.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/thoughtbot/vim-rspec/thoughtbot/vim-rspec.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-rake/tpope/vim-rake.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/junegunn/vim-easy-align/junegunn/vim-easy-align.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-projectionist/tpope/vim-projectionist.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/vim-perl/vim-perl/vim-perl/vim-perl.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/ddollar/nerdcommenter/ddollar/nerdcommenter.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/nachumk/systemverilog.vim/nachumk/systemverilog.vim.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/cespare/zenburn/cespare/zenburn.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/jakecraige/vim-colors/jakecraige/vim-colors.sh | /bin/bash -s stable

  silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/itchyny/lightLine.vim/itchyny/lightLine.vim.sh | /bin/bash -s stable

endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"*****************************************************************************
"" NeoBundle install packages
"*****************************************************************************
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/CSApprox'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
if v:version > 702
  NeoBundle 'Shougo/vimshell.vim'
endif

"" Vim-Session
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'

"" Snippets
" NeoBundle 'honza/vim-snippets'

"" Color
NeoBundle 'tomasr/molokai'

"" Vim-Bootstrap Updater
NeoBundle 'sherzberg/vim-bootstrap-updater'

let g:vim_bootstrap_langs = "c,perl,javascript,python,ruby"
let g:vim_bootstrap_editor = "vim"        " nvim or vim

"" Custom bundles
NeoBundle 'jacoborus/tender'
"NeoBundle 'itchyny/lightLine.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'majutsushi/tagbar'
"NeoBundle 'tpope/vim-rails'
"NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'benekastah/neomake'
NeoBundle 'w0rp/ale'
NeoBundle 'tomtom/quickfixsigns_vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Yggdroot/indentLine'
"NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-rake'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'ddollar/nerdcommenter'
NeoBundle 'nachumk/systemverilog.vim'
NeoBundle 'jakecraige/vim-colors'
NeoBundle 'jszakmeister/vim-togglecursor'

" Latex
NeoBundle 'matze/vim-tex-fold'
let g:tex_conceal = ""  " disable automatic $_$ remove of $

" [q ]q [l ]l move thrught quick fix
NeoBundle 'tpope/vim-unimpaired'

" ,l local and ,q quickfix
NeoBundle 'valloric/listtoggle'

" marks: use the m and m<space> delete all, ]` [` move
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'gioele/vim-autoswap'
NeoBundle 'osyo-manga/vim-over'

NeoBundle 'salsifis/vim-transpose'

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-easymotion.vim'

" Local rc per directory (useful for repo)
NeoBundle 'embear/vim-localvimrc'
let g:localvimrc_ask = 0
" Python/Pyrope Bundles
NeoBundle 'python_match.vim'

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Encoding
set bomb
set ttyfast
set binary  " Changes expandtab setup


"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set ignorecase
set smartcase


"" Directories for swp files
" set nobackup
" set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number
set showmatch       " show matching brackets

colorscheme tender
hi! Visual ctermbg=16

let no_buffers_menu=1
"if !exists('g:not_finsh_neobundle')
"  colorscheme molokai
"endif

" Easy motion
set incsearch
noremap <silent> <leader>/ :call incsearch#call(incsearch#config#easymotion#make())<CR>

" Easy Align shortcut
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

set pastetoggle=<F3>
set mouse=a
set mousemodel=popup
set t_Co=256
set cursorline
set cursorcolumn
" set guioptions=egmrti
set guioptions=caegi
hi Cursor guibg=#800000 guifg=Black ctermfg=16 ctermbg=255

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h20
    set transparency=7
  endif
  "set gfn=Monospace\ 12
  "set enc=utf-8 gfn=Monospace:h20
  set enc=utf-8 gfn=Inconsolata\ 14
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

"" Disable the blinking cursor.
" set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
"let g:airline_theme = 'powerlineish'
let g:airline_theme = 'tender'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
"cnoreabbrev W! w!
"cnoreabbrev Q! q!
"cnoreabbrev Qall! qall!
"cnoreabbrev Wq wq
"cnoreabbrev Wa wa
"cnoreabbrev wQ wq
"cnoreabbrev WQ wq
"cnoreabbrev W w
"cnoreabbrev Q q
"cnoreabbrev Qall qall

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'

" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

" terminal emulation
if g:vim_bootstrap_editor == 'nvim'
  nnoremap <silent> <leader>sh :terminal<CR>
else
  nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=130
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMake*.txt setlocal filetype=cmake
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************
"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command      = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching       = 0
let g:ctrlp_map               = '<c-p>'
let g:ctrlp_open_new_file     = 'r'
let g:ctrlp_working_path_mode = 'cr'

cnoremap <C-P> <C-R>= expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol             = '✗'
let g:syntastic_warning_symbol           = '⚠'
let g:syntastic_style_error_symbol       = '✗'
let g:syntastic_style_warning_symbol     = '⚠'
let g:syntastic_auto_loc_list            = 1
let g:syntastic_aggregate_errors         = 1

let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_verilog_compiler='verilator'
let g:syntastic_verilog_compiler_options="-Irtl --Wall --lint-only"

let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_python_flake8_post_args='--ignore=W391'

"autocmd FileType c setlocal tabstop=2 shiftwidth=2 expandtab
"autocmd FileType cpp setlocal tabstop=2 shiftwidth=2 expandtab

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap P "+gP<CR>
"noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Open current line on GitHub
noremap ,o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

"" Custom configs

" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal formatoptions+=croq softtabstop=2 smartindent
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 0

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1


let g:javascript_enable_domhtmlcss = 1


let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  "autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

augroup vimrc-pyrope
  autocmd!
  autocmd BufNewFile,BufRead *.prp setlocal filetype=pyrope
  "autocmd Filetype pyrope setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }
"autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab
" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Spell check
set spell spelllang=en_us
autocmd BufEnter *.tex :syntax spell toplevel " activate spell check with latex too
autocmd BufEnter *.txt :syntax spell toplevel " activate spell check with latex too
autocmd BufEnter README :syntax spell toplevel " activate spell check with latex too

set wildmenu        "Helps with auto-complete of filenames
set wildmode=list:longest "Match until the longest common string
set lz              " do not redraw while running macros (much faster) (LazyRedraw)
set shortmess=atI   " shortens messages to avoid 'press a key' prompt
set fdm=marker      " use {{ as fold method
set guioptions=caegi "No menu or scrollbar

" Cut&paste setup
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

