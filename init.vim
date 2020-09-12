set exrc
set secure
set nocompatible
set encoding=utf-8

call plug#begin('~/.vim/plugged')

"Plug 'aurieh/discord.nvim'
"Plug 'hugolgst/vimsence'
"Plug 'anned20/vimsence'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

syntax on
set laststatus=2
set scrolloff=1

set hidden
set nu
set cursorline
set confirm


" Number of spaces a tab stands for
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set syn=auto
set showmatch

set title

set ignorecase
set smartcase

"Line length above which to break a line
autocmd FileType python,cpp,c,text,rst,markdown,sh,sli setl textwidth=79

" Folding in C,CPP files
"autocmd FileType c,cpp setl foldenable foldmethod=syntax

" Vim airline show buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '>'
"let g:airline_theme='wombat'


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_remove_include_errors = 0
let g:ycm_clangd_binary_path = "clangd"
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_checkers = ['clang_tidy', 'clang_check', 'cppcheck', 'cppclean', 'gcc']
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
let g:syntastic_mode_map = {
            \ "mode": "passive",
            \ "passive_filetypes": ["cpp", "c", "h", "hpp"],
            \ "active_filetypes": ["tex", "python", "sh", "spec", "rst"]
            \ }
"let g:syntastic_tex_checkers = ['chktex']
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_flake8_exec = 'flake8-3'
"let g:syntastic_python_flake8_quiet_messages = {
"            \ "level": [],
"            \ "type": [],
"            \ }
"let g:syntastic_rst_checkers = ['rstcheck']
"let g:syntastic_rst_rstcheck_exec = "rstcheck"
"let g:syntastic_perl_checkers = ['perlcritic']
"let g:syntastic_ignore_files = ['texlive.spec']
"let g:syntastic_javascript_checkers = ['closurecompiler']
"let g:syntastic_javascript_closurecompiler_script = 'closure-compiler'

let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" True color
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
