" Vim compiler file
" Compiler:     PHPUnit
" Maintainer:   Haginaga <https://github.com/haginaga>
" URL:          https://github.com/haginaga/vim-compiler-phpunit

if exists('current_compiler')
  finish
endif
let g:current_compiler = 'phpunit'

if exists(':CompilerSet') != 2  " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpoptions
set cpoptions-=C

CompilerSet makeprg=phpunit
CompilerSet errorformat=%E%n)\ %.%#,%Z%f:%l,%C%m,%C,%-G%.%#

let &cpoptions = s:cpo_save
unlet s:cpo_save
