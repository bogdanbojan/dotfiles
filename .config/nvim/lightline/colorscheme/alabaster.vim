" =============================================================================
" Filename: autoload/lightline/colorscheme/alabaster.vim
" Author: Converted from Lualine to Lightline
" License: MIT License
" =============================================================================

let s:color1 = '#162022'
let s:color2 = '#cd974b'
let s:color3 = '#cecece'
let s:color4 = '#9F9F9F'
let s:color5 = '#333333'
let s:color6 = '#cc8bc9'

if &background ==# 'light'
    let s:color1 = '#c9c9c9'
    let s:color2 = '#cb9000'
    let s:color3 = '#222222'
    let s:color4 = '#666666'
    let s:color5 = '#aaaaaa'
    let s:color6 = '#7a3e9d'
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:color3, s:color5 ], [ s:color3, s:color1 ] ]
let s:p.normal.middle = [ [ s:color3, s:color1 ] ]
let s:p.normal.right = [ [ s:color3, s:color1 ] ]

let s:p.inactive.left =  [ [ s:color4, s:color1 ], [ s:color4, s:color1 ] ]
let s:p.inactive.middle = [ [ s:color4, s:color1 ] ]
let s:p.inactive.right = [ [ s:color4, s:color1 ] ]

let s:p.insert.left = [ [ s:color1, s:color3 ], [ s:color3, s:color1 ] ]
let s:p.replace.left = [ [ s:color1, s:color2 ], [ s:color3, s:color1 ] ]
let s:p.visual.left = [ [ s:color1, s:color6 ], [ s:color3, s:color1 ] ]

let g:lightline#colorscheme#alabaster#palette = lightline#colorscheme#fill(s:p)

