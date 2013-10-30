call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set encoding=utf-8
set mouse=a
set nu
set ignorecase
set smartcase           "ignore case if search pattern is all in lowercase
set undolevels=1000
" hide buffers instead of closing them when you :q, keeping their undo history
set hidden
"highlight all the matches in search
set hlsearch

"Colorscheme
set background=dark
set t_Co=256
"colorscheme jellybeans
colorscheme solarized

if has("gui_macvim")
  colorscheme railscasts
endif

syntax on

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
filetype plugin indent on

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
map <leader>ctw :%s/\s\+$//<CR>

" ==== VIM PLUGINS CONFIG ====
source vim_custom/vimrc_indent_guides
source vim_custom/vimrc_crtlp
source vim_custom/vimrc_powerline
source vim_custom/vimrc_snipmate
source vim_custom/vimrc_rspec
source vim_custom/vimrc_tabularize
source vim_custom/vimrc_taglist

" ==== VIM MAPS ====

map <F5> :NERDTree<CR>
map <F4> :set hlsearch!<CR>

" CTRL+X e CRTL+C to cut and copy in OSX
vmap <C-x> :!pbcopy<cr>
vmap <C-c> :w !pbcopy<cr><cr>

"This mapping make a closed tag with a new line with tab indent
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Tab>

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Tab mappings.
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" TODO List
noremap <Leader>td :noautocmd vimgrep /TODO/j **/*.*<CR>:cw<CR>

" Print current path
cmap <C-e> <C-r>=expand('%:p:h')<CR>/

" Select a text in Visual Mode and type <C+R> them text the substitution and
" type enter
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
