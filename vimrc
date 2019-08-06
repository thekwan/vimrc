" no vi compat
set nocompatible

" filetype func off
filetype off

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

syntax on 

colorscheme desert

set nocompatible
set number                " 줄 번호를 붙임  "
set backspace=2         " 삽입 모드에서 백스페이스를 계속 허용 "
set autoindent             " 자동 들여쓰기 "
set cindent             " C 언어 자동 들여쓰기 "
set smartindent         " 역시 자동 들여쓰기 "
set nowrap                 " 자동 줄바꿈 안함  "
set nowrapscan             " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음 "
"set ignorecase             " 찾기에서 대/소문자를 구별하지 않음 "
set incsearch             " 점진적으로 찾기  "
set nobackup             " 백업파일을 만들지 않음 "
set nojoinspaces         " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔 "
set ruler                 " 상태표시줄에 커서 위치를 보여줌 "
set tabstop=4             " 간격 "
set shiftwidth=4         " 자동 들여쓰기 간격 "
set keywordprg=ydic        " K를 눌렀을 때 실행할 명령어 "
set showcmd             " (부분적인)명령어를 상태라인에 보여줌 "
set showmatch             " 매치되는 괄호의 반대쪽을 보여줌 "
set autowrite             " :next나  :make 같은 명령를 입력하면 자동으로 저장 "
set linespace=3         " 줄간격 "
set title                 " 타이틀바에 현재 편집중인 파일을 표시 "
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\     " 다중 문서 작업을 위한 Status 줄 "
set tags+=./tags        " add current directory's generated tags file to available tags "

set csverb
set hlsearch
set ff=unix
set expandtab
set nofoldenable
set foldmethod=syntax
set guifont=Liberation\ Mono\ 9
set guifontwide=Hangang\ 9

map <C-e> :NERDTree<CR>

map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-/>^] : GtagsCursor<CR>

let mapleader=","
nmap <Leader>gd :Gtags <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>gr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>gs :Gtags -s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>gg :Gtags -go <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>gp :Gtags -Po <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>ge :Gtags -ge <C-R>=expand("<cword>")<CR><CR>

nmap <Leader>ld :Gtags
nmap <Leader>lr :Gtags -r
nmap <Leader>ls :Gtags -s
nmap <Leader>lg :Gtags -go
nmap <Leader>lp :Gtags -Po
nmap <Leader>le :Gtags -ge


nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l




call vundle#begin()
" start- all plugins below

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'        
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'davidhalter/jedi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'taglist.vim'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter' " http://vimawesome.com/plugin/vim-gutter
Plugin 'wincent/command-t'      " fast buffer browser

" stop - all plugins above
call vundle#end()


" filetype func on
filetype plugin indent on

