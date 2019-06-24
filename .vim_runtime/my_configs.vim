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

" ctags
set tags+=/usr/include/tags
" fzf
set rtp+=/usr/local/opt/fzf


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

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ ['mode', 'paste'],
            \             ['fugitive', 'readonly', 'filename', 'modified'] ],
            \   'right': [ [ 'lineinfo' ], ['percent'] ]
            \ },
            \ 'component': {
            \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
            \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
            \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
            \ },
            \ 'component_visible_condition': {
            \   'readonly': '(&filetype!="help"&& &readonly)',
            \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
            \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \ },
            \ 'component_function': {
            \   'cocstatus': 'coc#status'
            \ },
            \ 'separator': { 'left': ' ', 'right': ' ' },
            \ 'subseparator': { 'left': ' ', 'right': ' ' }
            \ }
