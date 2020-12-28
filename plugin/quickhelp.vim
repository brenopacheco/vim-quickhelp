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

exec 'nnoremap ' . g:quickhelp_map . ' :call quickhelp#open()<CR>'
