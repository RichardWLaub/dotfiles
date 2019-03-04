" set indentation rules
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" highlight column 80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

"syntax highlighting
syntax on

" add c++ includes file to path
let &path.="src/include,/usr/include/c++/4.2.1"

" you complete me conf
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" pathogen
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on

" turn on numbers
set number

" turn on ruler
set ruler

" toggle NERDTree
map <C-t> :NERDTreeToggle<CR>
" use NERDTREE automatically
autocmd vimenter * NERDTree
" Jump to the main window
autocmd VimEnter * wincmd p
" close NERDTREE if it is the last one open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" terraform-vim
let g:terraform_fmt_on_save=1
let g:terraform_align=1
let g:terraform_remap_spacebar=1

" vim-go settings
set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
noremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)

let g:go_fmt_command = "goimports"

" remove trailing white space
autocmd BufWritePre * %s/\s\+$//e

" typescript autocomplete
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
 endif
 let g:ycm_semantic_triggers['typescript'] = ['.']

"GoTo command
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" single quotes over double quotes
" " Prettier default: false
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#single_quote = 'true'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'none'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'
