" basic start
set nocompatible
set nu
set t_Co=256
set termguicolors
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
" basic end

" plug start
call plug#begin('~/.vim/plugged')

" scheme
Plug 'flazz/vim-colorschemes'
Plug 'octol/vim-cpp-enhanced-highlight'

" lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Valloric/YouCompleteMe'

" window
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()
" plug end

" theme start
set background=dark
colorscheme gruvbox
" theme end

" cpp highlight start
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 0
let g:cpp_experimental_template_highlight = 0
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
" cpp highlight end

" vim-go start
let g:go_fmt_command = "goimports"
let g:go_def_mapping_enabled = 0
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
noremap <D-J> <Esc>:GoDef<CR>
noremap <D-K> <Esc>:GoDefPop<CR>
" vim-go end

" youcompleteme start
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<C-Z>'
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_clangd_args = ['-log=verbose', '-pretty']
set completeopt=menu,menuone

noremap <C-Z> <NOP>
noremap gd <Esc>:YcmCompleter GoTo<CR>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,go': ['re!\w{2}'],
           \ }
" youcompleteme end

" nerdtree start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinSize=38
map <F11> :NERDTreeToggle<CR>
" nerdtree end

" leaderf start
let g:Lf_ShortcutF = '<F10>'
let g:Lf_ShortcutB = '<F9>'
let g:Lf_WindowHeight = 0.30
let g:Lf_HideHelp = 1
let g:Lf_ShowRelativePath = 0
let g:Lf_CacheDirectory = expand('~/.vim/cache')
noremap <F8> <Esc>:LeaderfMru<CR>
noremap <F7> <Esc>:LeaderfFunction<CR>
noremap <F6> <Esc>:LeaderfBufTag<CR>
" leaderf end

