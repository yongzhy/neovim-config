" === START OF vundle==="

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" VIM snipmate and its dependency
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" The powerful CtrlP 
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_root_markers = ['f3make.bat', '.p4config', 'cscope.out', 'cscope.files', '.git', '.hg', '.svn', '.bzr', '_darcs', 'GTAGS']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](Feedback|SSIProtocol)',
	\ 'file': '\v\.(xsl|txt|xml|vsd|exe|ppt|tags|out|ref)$',
	\ }

" Tagbar to show tags in current file
Bundle 'majutsushi/tagbar'
nnoremap <F8> :TagbarToggle<CR>

" auto completion with fuzzy and clang support
Bundle 'Valloric/YouCompleteMe'
" key compatible with snipmate
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']

" syntax checking
Bundle 'scrooloose/syntastic'

" airline status line
Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 0

" solarized color theme
Bundle 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
let g:solarized_bold      =0 
let g:solarized_underline =0
let g:solarized_italic    =0  
let g:solarized_menu      =0
set background=dark
colorscheme solarized

" Comment plugin
Bundle 'tomtom/tcomment_vim'

" Easy and fast motion
Bundle 'Lokaltog/vim-easymotion'

" Show visual indent guide
Bundle 'nathanaelkane/vim-indent-guides'

" Fast search tool
Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>fa :Ack! --smart-case <cword><cr>
nnoremap <leader>fw :Ack! --smart-case -w <cword><cr>

Bundle 'vim-scripts/gtags.vim'
silent! nnoremap <unique> <leader>fr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fg :Gtags <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>n :cn<CR>
silent! nnoremap <unique> <leader>p :cp<CR>
" Use gtags-cscope for cscope search
set csprg=gtags-cscope
" enable vim to search in cscope dabase for Ctrl+]
set cscopetag
" Make the cscope output to quickfix window
set cscopequickfix=s-,c-,d-,i-,t-,e-
silent! nnoremap <unique> <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>

filetype plugin indent on     " required! 

" === END OF vundle==="
