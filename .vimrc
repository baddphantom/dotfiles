" Automatically install the plugin manager if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins
call plug#begin('~/.vim/plugged')
" Actual Plugs
Plug 'vimlab/split-term.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'svermeulen/vim-easyclip' " m - for cut, d - for delete
Plug 'christoomey/vim-system-copy'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'gorkunov/smartpairs.vim'
" Plug 'thinca/vim-visualstar'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
" Plug 'tpope/vim-vinegar'
" Plug 'Shougo/neosnippet.vim'
" Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
" Plug 'janko-m/vim-test'
" Plug 'tpope/vim-endwise'
" Plug 'mattn/emmet-vim'
" Plug 'embear/vim-localvimrc'
" Plug 'altercation/vim-colors-solarized'
" Plug 'joshdick/onedark.vim'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'jlanzarotta/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-signify'
" Style Plugs
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'

" Go Plugs
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Git Plugs
Plug 'tpope/vim-git'

" Html & Co Plugs
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'sukima/xmledit'

" JS Plugs
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript' }
" Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'jparise/vim-graphql'

" Python Plugs
" Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
" Plug 'flowtype/vim-flow', { 'for': 'javascript' }
" Plug 'tweekmonster/django-plus.vim'

" Ruby Plugs
" Plug 'vim-ruby/vim-ruby'
" Plug 'tpope/vim-rbenv'

call plug#end()

" Use :help <option> to see the docs
set nocompatible
filetype plugin indent on
set noerrorbells visualbell t_vb=
" autocmd GUIEnter * set visualbell t_vb=
" set go-=R
" set go-=L
syntax enable

" let g:neosnippet#disable_runtime_snippets = {
" \   '_' : 1,
" \ }
" let g:neosnippet#snippets_directory = '~/.config/nvim/UltiSnips'
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)


set encoding=utf-8
set noshowcmd
set nofoldenable
" set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set smartindent
" set autoindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set mouse=a
set hidden
set number
set relativenumber
set cursorline
set title
set ruler
set nospell
set clipboard=unnamed
set laststatus=2
set wrap
set linebreak
set nolist
set scrolloff=5
set wildmode=full
" set wildmode=list:longest
set wildmenu
set wildignore+=*.o,*.obj,.git,node_modules,_site,*.class,*.zip,*.aux
set splitbelow
set splitright
" set tags=./.tags;

let mapleader=","
noremap \ ,


" clear highlights by hitting ESC
" or by hitting enter in normal mode
nnoremap <CR> :noh<CR><CR>
" set list listchars=tab:»·,trail:·

" make the completion menu a bit more readable
highlight PmenuSel ctermbg=white ctermfg=black
highlight Pmenu ctermbg=black ctermfg=white
 " so it's clear which paren I'm on and which is matched
highlight MatchParen cterm=none ctermbg=none ctermfg=yellow

" http://blog.petrzemek.net/2016/04/06/things-about-vim-i-wish-i-knew-earlier/
" better jk normally but don't remap when it's called with a count
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


runtime macros/matchit.vim

" Customize view
sy on
set t_Co=256

" Tmux integration
if &term =~ '^screen'
  " tmux will send xterm-style keys when xterm-keys is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" colorscheme nacx
colorscheme dracula

" Key remaps
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F4> :BufExplorerHorizontalSplit<CR>
nmap <silent> <F5> :!tmux splitw -v -l 5<CR><CR>

" Use fancy buffer closing that doesn't close the split
:nnoremap <silent> <S-Left> :bprevious<CR>
:nnoremap <silent> <S-Right> :bnext<CR>
:noremap <silent> <C-Left> b
:noremap <silent> <C-Right> w

" Replace strings in local or global scope
" https://stackoverflow.com/a/597932/3540564
:nnoremap gr gd[{V%:s/<C-R>///gc<Left><Left><Left>
:nnoremap gR gD:s/<C-R>///gc<Left><Left><Left>

" :w!! sudo saves the file
cmap w!! w ! tee % >/dev/null

" NERDTree options
let NERDTreeAutoCenter = 1
let NERDTreeCaseSensitiveSort = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMouseMode = 1
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$']
let NERDTreeIgnore+=['.*\.pyc$']
let NERDTreeIgnore+=['.*\.class$']

" Substitute word with hokey - s (siw, si()
let g:EasyClipUseSubstituteDefaults = 1
let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipAutoFormat = 1
" Bufexplorer options
let g:bufExplorerSplitBelow=1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '»'
let g:airline_exclude_preview = 1
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '»'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '«'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '␤ '
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'

" Vim-go
let g:go_fmt_autosave=0
autocmd FileType go nmap <Leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>t  <Plug>(go-test)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <Leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" new file in current directory
map <Leader>nf :e <C-R>=expand("%:p:h") . "/" <CR>

" Deoplete (autocompletion)
" set pyxversion=3
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
set completeopt-=preview
set completeopt+=noinsert,longest,menuone
if has("patch-7.4.314")
    set shortmess+=c
endif
" Close the preview window after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Enter just selects the item in the autocomplete menu
" http://vim.wikia.com/wiki/VimTip1386
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Map Ctrl+Space to autocomplete
" https://coderwall.com/p/cl6cpq/vim-ctrl-space-omni-keyword-completion
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" CtrlP
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

" Close tmux when exiting vim
autocmd VimLeave * silent !tmux killp -a

" Custom file types
autocmd BufNewFile,BufRead .md set filetype=markdown
autocmd BufNewFile,BufRead .babelrc setlocal filetype=json
autocmd BufNewFile,BufRead .eslintrc setlocal filetype=json
autocmd BufNewFile,BufRead .tsx set filetype=typescript.jsx

autocmd FileType markdown setlocal shiftwidth=4 softtabstop=4 tabstop=4 wrap linebreak nolist wrap lbr colorcolumn=0 synmaxcol=999999

" Better help navigation
autocmd FileType help nnoremap <buffer> <CR> <C-]>
autocmd FileType help nnoremap <buffer> <BS> <C-T>
autocmd FileType help nnoremap <buffer> o /'\l\{2,\}'<CR>
autocmd FileType help nnoremap <buffer> O ?'\l\{2,\}'<CR>
autocmd FileType help nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
autocmd FileType help nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>

" Automatic commands
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter *.c,*.cpp,*.h,*.java,*.py,*.go NERDTree
autocmd FileType c,cpp,h,java,python,go nested :TagbarOpen

" QuickFix window always at the bottom
" autocmd FileType qf wincmd J
autocmd FileType qf setlocal wrap linebreak

" Two space indent in Ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

" Autoload changes in .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

" Fix editing crontab
autocmd filetype crontab setlocal nobackup nowritebackup

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
" disable the Ale HTML linters
let g:ale_linters = {
\   'html': [],
\}
let g:ale_set_highlights = 0

" stop Elm.vim trying to show compiler erorrs in Vim
let g:elm_format_fail_silently = 1

" set Prettier up to run on save
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = [
\  'prettier'
\]
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --no-semi'

" if has('nvim')
"     tnoremap <c-h> <c-\><c-n><c-w>h
"     tnoremap <c-j> <c-\><c-n><c-w>j
"     tnoremap <c-k> <c-\><c-n><c-w>k
"     tnoremap <c-l> <c-\><c-n><c-w>l
"     tnoremap <Esc> <C-\><C-n>
"     set inccommand=split

"     autocmd BufWinEnter,WinEnter term://* startinsert

"     let test#strategy = 'neovim'
"   endif
