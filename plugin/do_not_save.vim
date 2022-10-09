" Title:        Do Not Save Plugin
" Description:  A plugin to prevent saving files.
" Maintainer:   Paul Logston <https://github.com/logston>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_plugin_do_not_save")
    finish
endif
let g:loaded_plugin_do_not_save = 1

augroup prewrites
	autocmd BufWritePre,FileWritePre,FileAppendPre * call do_not_save#CheckFilename(expand('<afile>'))
augroup END
