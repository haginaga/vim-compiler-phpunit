# vim-compiler-phpunit
Make quickfix work fine with vim-test and phpunit

## Setup

Using [vim-plug](https://github.com/junegunn/vim-plug), add

```vim
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plup 'haginaga/vim-compiler-phpunit'
```

to `.vimrc` file (see vim-plug documentation for where), and run `:PlugInstall`.

Add useful configurations to `.vimrc` file:

```vim
let g:test#strategy = 'dispatch' " To use quickfix
let g:test#php#phpunit#options = {
  \ 'nearest': '--no-coverage',
  \ 'file':    '--no-coverage',
  \}

augroup Test
  autocmd!
  autocmd BufNewFile,BufRead *Test.php :compiler phpunit
augroup END

let g:dispatch_compilers = {
  \ './bin/phpunit': 'phpunit',
  \ './vendor/bin/phpunit': 'phpunit',
  \}
```

(see vim-test documentation for where), and run `:TestFile`.

## References

* https://github.com/janko-m/vim-test
* https://github.com/janko-m/vim-test/issues/106
* https://github.com/afternoon/vim-phpunit
