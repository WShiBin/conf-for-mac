set number
set background=light " colorscheme solarized
set cmdheight=2 " Better display for messages
set foldlevelstart=99

map <C-c> :q<cr>

" let arrow key not work
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" All operations such as yy, D, and P work with the clipboard
set clipboard=unnamed

" ctags
set tags+=/usr/include/tags
" fzf
set rtp+=/usr/local/opt/fzf

" Change Vim cursor in different modes
" iTerm2 on OS
let &t_SI = "\<Esc>]50;CursorShape=1\x7"    " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7"    " Block in normal mode
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"

" tagbar
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" map <c-e> :NERDTreeToggle<cr>
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

let g:ctrlp_custom_ignore = ''

let g:coc_snippet_next = '<tab>'

