" Put this in your lightline.vim autoload colorscheme folder.
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Everforest color palette
let s:bg0 = ['#2b3339', 235]
let s:bg1 = ['#323c41', 236]
let s:bg2 = ['#3a454a', 237]
let s:bg3 = ['#445055', 238]
let s:fg  = ['#d3c6aa', 223]
let s:red = ['#e67e80', 167]
let s:green = ['#a7c080', 142]
let s:yellow = ['#dbbc7f', 214]
let s:blue = ['#7fbbb3', 109]
let s:purple = ['#d699b6', 175]
let s:aqua = ['#83c092', 108]
let s:gray = ['#7a8478', 243]

let s:p.normal.left = [ [ s:bg0, s:green ], [ s:fg, s:bg2 ] ]
let s:p.normal.middle = [ [ s:fg, s:bg1 ] ]
let s:p.normal.right = [ [ s:bg0, s:green ], [ s:fg, s:bg2 ] ]
let s:p.normal.error = [ [ s:bg0, s:red ] ]
let s:p.normal.warning = [ [ s:bg0, s:yellow ] ]

let s:p.inactive.left =  [ [ s:gray, s:bg1 ], [ s:gray, s:bg1 ] ]
let s:p.inactive.middle = [ [ s:gray, s:bg1 ] ]
let s:p.inactive.right = [ [ s:gray, s:bg1 ], [ s:gray, s:bg1 ] ]

let s:p.insert.left = [ [ s:bg0, s:blue ], [ s:fg, s:bg2 ] ]
let s:p.insert.right = [ [ s:bg0, s:blue ], [ s:fg, s:bg2 ] ]

let s:p.replace.left = [ [ s:bg0, s:red ], [ s:fg, s:bg2 ] ]
let s:p.replace.right = [ [ s:bg0, s:red ], [ s:fg, s:bg2 ] ]

let s:p.visual.left = [ [ s:bg0, s:purple ], [ s:fg, s:bg2 ] ]
let s:p.visual.right = [ [ s:bg0, s:purple ], [ s:fg, s:bg2 ] ]

let s:p.tabline.left = [ [ s:fg, s:bg2 ] ]
let s:p.tabline.tabsel = [ [ s:bg0, s:green ] ]
let s:p.tabline.middle = [ [ s:fg, s:bg1 ] ]
let s:p.tabline.right = [ [ s:fg, s:bg2 ] ]

let g:lightline#colorscheme#everforest#palette = lightline#colorscheme#flatten(s:p)
