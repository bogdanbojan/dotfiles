let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'command': {}}

" Define colors using the more muted paper variant with correct background
let s:bg = [ '#1F1F28', 0 ]       " terminal background
let s:dragonWhite = [ '#c5c9c5', 15 ]    " main foreground
let s:dragonGray = [ '#a6a69c', 8 ]      " muted foreground
let s:dragonViolet = [ '#8992a7', 13 ]   " muted violet
let s:dragonGreen = [ '#87a987', 10 ]    " muted green
let s:dragonBlue2 = [ '#8ba4b0', 12 ]    " muted blue
let s:dragonOrange = [ '#b6927b', 9 ]    " muted orange
let s:dragonRed = [ '#c4746e', 1 ]       " muted red
let s:dragonPink = [ '#a292a3', 5 ]      " muted pink

" Normal mode
let s:p.normal.left = [ [ s:bg, s:dragonBlue2 ], [ s:dragonWhite, s:bg ] ]
let s:p.normal.middle = [ [ s:dragonGray, s:bg ] ]
let s:p.normal.right = [ [ s:bg, s:dragonBlue2 ], [ s:dragonWhite, s:bg ] ]

" Insert mode
let s:p.insert.left = [ [ s:bg, s:dragonGreen ], [ s:dragonWhite, s:bg ] ]
let s:p.insert.right = [ [ s:bg, s:dragonGreen ], [ s:dragonWhite, s:bg ] ]

" Command mode
let s:p.command.left = [ [ s:bg, s:dragonOrange ], [ s:dragonWhite, s:bg ] ]
let s:p.command.right = [ [ s:bg, s:dragonOrange ], [ s:dragonWhite, s:bg ] ]

" Visual mode
let s:p.visual.left = [ [ s:bg, s:dragonViolet ], [ s:dragonWhite, s:bg ] ]
let s:p.visual.right = [ [ s:bg, s:dragonViolet ], [ s:dragonWhite, s:bg ] ]

" Replace mode
let s:p.replace.left = [ [ s:bg, s:dragonRed ], [ s:dragonWhite, s:bg ] ]
let s:p.replace.right = [ [ s:bg, s:dragonRed ], [ s:dragonWhite, s:bg ] ]

" Inactive mode
let s:p.inactive.left = [ [ s:dragonGray, s:bg ], [ s:dragonGray, s:bg ] ]
let s:p.inactive.middle = [ [ s:dragonGray, s:bg ] ]
let s:p.inactive.right = [ [ s:dragonGray, s:bg ], [ s:dragonGray, s:bg ] ]

" Tab line
let s:p.normal.error = [ [ s:dragonRed, s:bg ] ]
let s:p.normal.warning = [ [ s:dragonOrange, s:bg ] ]
let s:p.normal.tab = [ [ s:dragonGray, s:bg ] ]
let s:p.normal.tabsel = [ [ s:dragonBlue2, s:bg ] ]

let g:lightline#colorscheme#kanagawa_paper#palette = lightline#colorscheme#flatten(s:p)
