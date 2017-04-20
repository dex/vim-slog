# vim-slog
A syntax plugin for slog

# Installation
Put folders `ftdetect` and `syntax` to `$HOME/.vim`.

# Usage

## Auto Detection ##
### Detection by filename
Add the following line to `ftdetect/slogfiletype.vim`:
```
au BufRead <new_file_name> setfiletype slog
```

### Manul ###
Please type the following command in vim:
```
:set ft=slog
```
