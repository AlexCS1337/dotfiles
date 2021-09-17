" my vimrc config file "

"basic settings
set number relativenumber
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set cursorline

" set encoding for Japanese # use at own risk
"e ++enc=sjis

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif

    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/

    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    "Add your bundles here
    Plugin 'Syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'mattn/emmet-vim'
    Plugin 'bling/vim-airline'
    Plugin 'https://github.com/tpope/vim-fugitive'

    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()

    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    "colorscheme solarized
    syntax on                      " enable syntax

" Setting up Vundle - the vim plugin bundler end


" Start NERDTree when Vim is opened and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree when Vim is opened and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p


" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
                        \ quit | endif

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
