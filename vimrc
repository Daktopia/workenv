set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'




Plugin 'bling/vim-airline'

Plugin 'jiangmiao/auto-pairs'

Plugin 'shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'


Plugin 'valloric/youcompleteme'


call vundle#end()            " required
filetype plugin indent on    " required



let g:airline#extensions#tabline#enabled = 1

let g:vimshell_prompt_expr = 'escape(fnamemodify(getcwd(), ":~").">", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '



" youcompleteme

let g:ycm_python_binary_path = '/usr/bin/python3'




map <F2> :Unite file -vertical -toggle<CR>
map <F3> :Unite buffer -vertical -toggle<CR>
nmap <F4> :VimShellCreate<CR>


" buffer


" tab
map <C-o> :tabnew<CR>
map <C-n> :tabn<CR>
map <C-p> :tabp<CR>
map <SPACE> gt
"map <S-SPACE> gT


" split view
map <TAB> <C-w><C-w>

map <CR> :sh<CR>

"map <S-n> :bn<CR>
"map <S-p> :bp<CR>

" navigate
map <S-Left> <C-u>
map <S-Right> <C-d>

nmap <Up> <Up>zz
nmap <Down> <Down>zz

nmap <Backspace> <C-t>


set hlsearch " searching pattern highlighting
set nu " line number
set autoindent
set si "smart indent
set cindent
set history=1024
set laststatus=2
" set paste
set shiftwidth=4 " auto indent width
set showmatch " brace highlighting
set tabstop=4
set background=dark

"set smarttab
"set smartindent

set autoread


syntax on






" cscope
if has("cscope")
    set cscopetag
    set csto=0
    if filereadable("cscope.out")
	cs add cscope.out
    elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
    endif
    set cscopeverbose

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d ^<C-R>=expand("<cword>")<CR><CR>

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

