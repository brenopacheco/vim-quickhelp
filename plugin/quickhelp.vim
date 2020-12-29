if exists('g:quickhelp_loaded')
    finish
endif

let g:quickhelp_loaded = 1

if !exists('g:quickhelp_map')
    let g:quickhelp_map = "<F1>"
endif

if !exists('g:quickhelp_show_clippy')
    let g:quickhelp_show_clippy = v:true
endif

" echo, floating
if !exists('g:quickhelp_display')
    let g:quickhelp_display = "floating"
endif

exec 'nnoremap <silent> ' . g:quickhelp_map . ' :call quickhelp#open()<CR>'
