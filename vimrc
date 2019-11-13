scripte utf-8
" vim: set fenc=utf-8 tw=0: "
" 파일의 첫부분에 위의 2줄을 꼭 남겨 두십시오. "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 6l4ck3y3(까막눈)의 Vim 설정 파일 "
" 마지막 수정: 2010-06-14 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 프로그램 기본 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 오리지널 Vi 와의 호환성을 없애고, Vim 만의 기능들을 쓸 수 있게 함. "
set nocp

" 모든 옵션을 원래대로 복원 "
set all&

" 명령어 기록을 남길 갯수 지정 "
set hi=100

" 오류음 대신 비주얼벨 사용 "
"set vb

" 매크로 실행중에 화면을 다시 그리지 않음 "
set lz

" 프로그램 시작시 플러그인 로드 "
set lpl

" 인코딩 설정 "
" 문서를 읽을 때 BOM 을 자동으로 제거하려면, fencs 맨 앞에 ucs-bom 를 추가하세요. "
"let &tenc=&enc "
set enc=utf-8
set fenc=utf-8
"set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1
set fencs=ics-hom,utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1
set nobomb

let $LANG='ko_KR.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 인쇄 옵션 설정 "
" set printencoding=utf8 "
" set printmbcharset=ISO10646 "
" set printmbfont=r:나눔고딕코딩,c:yes,a:yes "
" set printfont=나눔고딕코딩\ 10 "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 모양 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")

" gVim의 기본폰트 설정 "
    if has("win32")
        set gfn=Fixedsys:h10:cHANGEUL
    elseif has("unix")
        set gfn=나눔고딕코딩\ 10
    endif

" gVim의 배경테마 설정 "
    "colorscheme desert
    colorscheme koehler

" gVim 시작시 크기지정 "
    set lines=30
    set co=150

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편집 기능 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ESC키를 누르면 한글 모드가 해제 "
" 입력모드에서 이전 언어 설정 모드 유지 "
inoremap <ESC> <ESC>:set imdisable<CR>
nnoremap i :set noimd<CR>i
nnoremap I :set noimd<CR>I
nnoremap a :set noimd<CR>a
nnoremap A :set noimd<CR>A
nnoremap o :set noimd<CR>o
nnoremap O :set noimd<CR>O    

" 입력모드에서 Ctrl+d로 백스페이스 기능 "
map! <C-d> <BS>

" Shift+Enter로 아래줄로 커서 넘기기 기능 "
map <S-CR> <ESC>o
map! <S-CR> <ESC>o

" 괄호 자동 완성 후 입력모드로 전환 "
map! () ()<ESC>i
map! (); ();<ESC>hi
map! [] []<ESC>i
map! {} {}<ESC>i
map! {}; {};<BS><ESC>i<CR><ESC>O<BS>
map! <> <><ESC>i
map! '' ''<ESC>i
map! "" ""<ESC>i

" 현재 줄의 마지막에 이어 쓰기 "
map! <C-TAB> <S-CR><ESC>i<BACKSPACE>

" 파일의 종류를 자동으로 인식 "
"filetype on

" 자동 문법 강조 "
syntax on 

set nocompatible         " Vim 디폴트 기능들을 사용함 "
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
"set tags+=./tags        " add current directory's generated tags file to available tags "
"if filereadable("./cscope.out")
	"cs add cscope.out
"endif
set csverb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 플러그인 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" c.vim 플러그인의 C_InsertTemplate() 함수 맵핑 설정. "
noremap <unique> <script> <Plug>CommentFuncDes :call C_InsertTemplate("comment.function")<CR>
noremap <unique> <script> <Plug>CommentFrame :call C_InsertTemplate("comment.frame")<CR>

" omnicppcomplete.vim 플러그인 설정. "
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif "
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif "

" let OmniCpp_MayCompleteDot = 1         autocomplete with . "  
" let OmniCpp_MayCompleteArrow = 1          autocomplete with -> "
" let OmniCpp_MayCompleteScope = 1          autocomplete with :: "
" let OmniCpp_SelectFirstItem = 2          select first item (but don't insert) "
" let OmniCpp_NamespaceSearch = 2          search namespaces in this and included files "
" let OmniCpp_ShowPrototypeInAbbr = 1    show function prototype (i.e. parameters) in popup window "
" let OmniCpp_DisplayMode = 1 "
" let OmniCpp_LocalSearchDecl = 1 "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 단축키 설정 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" F1은 프레임 형식의 주석 달기, Ctrl+F1은 함수에 대한 설명 달기 "
map <F1> <Plug>CommentFrame
map! <F1> <ESC><F1><ESC>a
map <C-F1> <Plug>CommentFuncDes
map! <C-F1> <ESC><C-F1><ESC>a

" F2는 탭 열기, Ctrl+h,l로 탭 이동 "
map <F2> :tabnew<CR>            
map <C-h> gT
map <C-l> gt

" F3은 저장 "
map <F3> :w!<CR>                   
map! <F3> <ESC><F3>

" F4는 현재창 닫기 "
map <F4> :q!<CR>

" F5는 TagList 열기 "
"map <F5> :TlistToggle<CR>

" F6은 파일 비교하기, Ctrl+F6로 파일 비교하기 해제 "
"map <F6> :diffthis<CR><C-w><C-w>:diffthis<CR>
"map <C-F6> :diffoff<CR><C-w><C-w>:diffoff<CR>
map <F6> :!ctags -R  .<CR><CR>

" F7은 Hex 모드 "
"map <F7> :%!xxd<CR>
map <F7> :TlistToggle<CR>

" F8은 ctags 생성 "
"map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
"map <F8> :!ctags -R  .<CR><CR>
map <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" F9은 ctags 생성 "
"map <F9> :set tags=~/opencl/tags/usr_include_CL_tags<CR><CR>
map <F9> :set tags+=./tags<CR><CR>

" Ctrl+k는 폴딩 접기, Ctrl+j로 폴딩 열기 "
"map <C-k> v]}zf<CR>
"map <C-j> zo<CR>
"
" Gtags commands
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-\>^] :GtagsCursor<CR>

"------------------- GTAGS configuration -----------------"
let mapleader=","
",gd 입력. 현재 cursor가 위치한 string을 tag에서 검색(definition등)
nmap <Leader>gd :Gtags <C-R>=expand("<cword>")<CR><CR> 
",gr 입력. 현재 cursor가 위치한 string으로 reference검색.사용하는 곳의 위치를 보여줌.
nmap <Leader>gr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
",gs 입력. 현재 cursor가 위치한 string으로 symbol 검색.(variable등)
nmap <Leader>gs :Gtags -s <C-R>=expand("<cword>")<CR><CR>
",gg 입력, --grep pattern 검색, 모든 파일에서 검색, (h, c, txt 등)
nmap <Leader>gg :Gtags -go <C-R>=expand("<cword>")<CR><CR>
",gp 입력, 파일명 검색 
nmap <Leader>gp :Gtags -Po <C-R>=expand("<cword>")<CR><CR>
",ge 입력, --regexp 검색. 
nmap <Leader>ge :Gtags -ge <C-R>=expand("<cword>")<CR><CR>
     
" 위의 사용법과 동일하며, case sensitivity를 ignore
nmap <Leader>igd :Gtags -i <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igr :Gtags -ir <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igs :Gtags -is <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igg :Gtags -igo <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igp :Gtags -iPo <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>ige :Gtags -ige <C-R>=expand("<cword>")<CR><CR>
     
"위의 사용법과 동일하며, 한가지 차이점은 위의 명령은 현재 커서 위치의 string으로 검색
"아래 명령은 검색하려는 string을 직접 입력함
nmap <Leader>ld :Gtags
nmap <Leader>lr :Gtags -r
nmap <Leader>ls :Gtags -s
nmap <Leader>lg :Gtags -go
nmap <Leader>lp :Gtags -Po
nmap <Leader>le :Gtags -ge
     
nmap <Leader>ild :Gtags -i
nmap <Leader>ilr :Gtags -ir
nmap <Leader>ils :Gtags -is
nmap <Leader>ilg :Gtags -igo
nmap <Leader>ilp :Gtags -iPo
nmap <Leader>ile :Gtags -ige
"---------------------------------------------------------"


" Ctrl+s는 소스파일과 헤더파일 전환 "
map <C-s> :A<CR>

" Ctrl+e는 디렉토리 목록 열기, Ctrl+Enter로 파일 선택 후 디렉토리 목록 닫기 "
map <C-e> :NERDTree<CR>

" Ctrl+y 사전 검색, 단어 위에서 Shift+k를 눌러도 동작 "
map <C-y> :!ydic 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim 개인 설정 완료  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch

" Maximuze gvim on start
"if has("gui_running")
	"set lines=999 columns=999
"endif


set nocompatible
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


" Vim에서 파일 탐색기를 사용할 수 있게 한다. - Nerd Tree
Plugin 'The-NERD-tree'
" Vim에서 자동완성 기능(Ctrl + P)을 키입력하지 않더라도 자동으로 나타나게 - AutoComplPop
"Plugin 'AutoComplPop'
" 열려있는 소스파일의 클래스, 함수, 변수 정보 창 - Tag List
"Plugin 'taglist-plus'

" NERD Tree를 왼쪽에 생성
let NERDTreeWinPos = "left"
" NERD Tree는 F7키. Tag List는 F8키에 매칭.
"nmap <F7> :NERDTree<CR>
"nmap <F8> :TlistToggle<CR>
filetype on
" Tag list가 사용하는 ctags의 경로 설정
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
" Tag list 창을 오른쪽으로 생성
let Tlist_Use_Right_Window = 1

set guifont=Liberation\ Mono\ 9
set guifontwide=Hangang\ 9

set expandtab
set shiftwidth=4

set nofoldenable
set foldmethod=syntax

set ff=unix
