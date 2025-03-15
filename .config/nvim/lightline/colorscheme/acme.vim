" Lightline Acme Theme
" Based on Acme Vim theme

let g:lightline = {}
let g:lightline.colorscheme = 'acme'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Normal mode
let s:p.normal.left = [ [ '#000000', '#aeeeee', 232, 159 ], [ '#000000', '#eaffff', 232, 194 ] ]
let s:p.normal.middle = [ [ '#000000', '#ffffea', 232, 230 ] ]
let s:p.normal.right = [ [ '#000000', '#aeeeee', 232, 159 ], [ '#000000', '#eaffff', 232, 194 ] ]
let s:p.normal.error = [ [ '#ffffea', '#c00000', 230, 1 ] ]
let s:p.normal.warning = [ [ '#000000', '#cccc7c', 232, 187 ] ]

" Inactive mode (muted colors)
let s:p.inactive.left = [ [ '#505050', '#eaffff', 239, 194 ], [ '#505050', '#ffffea', 239, 230 ] ]
let s:p.inactive.middle = [ [ '#505050', '#ffffea', 239, 230 ] ]
let s:p.inactive.right = [ [ '#505050', '#eaffff', 239, 194 ], [ '#505050', '#ffffea', 239, 230 ] ]

" Insert mode (slightly different highlights)
let s:p.insert.left = [ [ '#000000', '#cccc7c', 232, 187 ], [ '#000000', '#fcfcce', 232, 229 ] ]
let s:p.insert.middle = [ [ '#000000', '#ffffea', 232, 230 ] ]
let s:p.insert.right = [ [ '#000000', '#cccc7c', 232, 187 ], [ '#000000', '#fcfcce', 232, 229 ] ]

" Replace mode
let s:p.replace.left = [ [ '#ffffea', '#505050', 230, 239 ], [ '#000000', '#eaffff', 232, 194 ] ]

" Visual mode
let s:p.visual.left = [ [ '#ffffea', '#000000', 230, 232 ], [ '#000000', '#eaffff', 232, 194 ] ]

" Tabline
let s:p.tabline.left = [ [ '#000000', '#eaffff', 232, 194 ] ]
let s:p.tabline.tabsel = [ [ '#000000', '#aeeeee', 232, 159 ] ]
let s:p.tabline.middle = [ [ '#000000', '#ffffea', 232, 230 ] ]
let s:p.tabline.right = [ [ '#000000', '#aeeeee', 232, 159 ] ]

let g:lightline#colorscheme#acme#palette = lightline#colorscheme#fill(s:p)
