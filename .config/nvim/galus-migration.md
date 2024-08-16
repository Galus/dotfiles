# NeoVim overhaul 2024

## Plugins
- [ ] 'unblevable/quick-scope'
- [ ]'morhetz/gruvbox'
- [ ]'norcalli/nvim-colorizer.lua'
- [ ]'tpope/vim-commentary'
- [ ]'tpope/vim-fugitive'
- [ ]'tpope/vim-unimpaired'
- [ ]'shumphrey/fugitive-gitlab.vim'
- [ ]'itchyny/lightline.vim'
- [ ]'mengelbrecht/lightline-bufferline'
- [ ]'vim-scripts/grep.vim'
- [ ]'vim-scripts/CSApprox'
- [ ]'Raimondi/delimitMate'
- [ ]'majutsushi/tagbar'
- [ ]'avelino/vim-bootstrap-updater'
- [ ]'sheerun/vim-polyglot'
- [ ]'neoclide/coc.nvim', {'branch': 'release'}
- [ ]'liuchengxu/graphviz.vim'
if isdirectory('/usr/local/opt/fzf')
  - [ ]'/usr/local/opt/fzf' | - [ ]'junegunn/fzf.vim'
else
  - [ ]'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  - [ ]'junegunn/fzf.vim'
endif
- [ ]'Shougo/vimproc.vim', {'do': g:make}
- [ ]'honza/vim-snippets'
- [ ]'scrooloose/vim-slumlord'
- [ ]'ziglang/zig.vim'
- [ ]'hail2u/vim-css3-syntax'
- [ ]'tpope/vim-haml'
- [ ]'mattn/emmet-vim'
- [ ]'jelera/vim-javascript-syntax'
- [ ]'davidhalter/jedi-vim'
- [ ]'raimon49/requirements.txt.vim', {'for': 'requirements'}
- [ ]'kkoomen/vim-doge', { 'do': { -> doge#install() } }
- [ ]'mhinz/vim-startify'
- [ ]'hashivim/vim-terraform'
- [ ]'juliosueiras/vim-terraform-completion'
- [ ]'vimwiki/vimwiki'
- [ ]'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
