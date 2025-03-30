let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:yorumi0 = ['#060914', 'NONE']
let s:yorumi1 = ['#121520', 0]
let s:yorumi2 = ['#343742', 'NONE']
let s:yorumi3 = ['#1D202B', 8]
let s:yorumi4 = ['#BDBFCB', 'NONE']
let s:yorumi5 = ['#D7E1B7', 7]
let s:yorumi6 = ['#A9D07C', 15]
let s:yorumi7 = ['#85E0CB', 14]
let s:yorumi8 = ['#798DDC', 6]
let s:yorumi9 = ['#597BC0', 4]
let s:yorumi10 = ['#798DDC', 12]
let s:yorumi11 = ['#F47571', 1]
let s:yorumi12 = ['#E1C084', 11]
let s:yorumi13 = ['#C39D55', 3]
let s:yorumi14 = ['#A9D07C', 2]
let s:yorumi15 = ['#E184AF', 5]

let s:p.normal.left = [ [ s:yorumi1, s:yorumi8 ], [ s:yorumi5, s:yorumi1 ] ]
let s:p.normal.middle = [ [ s:yorumi5, s:yorumi3 ] ]
let s:p.normal.right = [ [ s:yorumi5, s:yorumi1 ], [ s:yorumi5, s:yorumi1 ] ]
let s:p.normal.warning = [ [ s:yorumi1, s:yorumi13 ] ]
let s:p.normal.error = [ [ s:yorumi1, s:yorumi11 ] ]

let s:p.inactive.left =  [ [ s:yorumi1, s:yorumi8 ], [ s:yorumi5, s:yorumi1 ] ]
let s:p.inactive.middle = [ [ s:yorumi5, s:yorumi1 ] ]
let s:p.inactive.right = [ [ s:yorumi5, s:yorumi1 ], [ s:yorumi5, s:yorumi1 ] ]

let s:p.insert.left = [ [ s:yorumi1, s:yorumi6 ], [ s:yorumi5, s:yorumi1 ] ]
let s:p.replace.left = [ [ s:yorumi1, s:yorumi13 ], [ s:yorumi5, s:yorumi1 ] ]
let s:p.visual.left = [ [ s:yorumi1, s:yorumi7 ], [ s:yorumi5, s:yorumi1 ] ]

let s:p.tabline.left = [ [ s:yorumi5, s:yorumi3 ] ]
let s:p.tabline.middle = [ [ s:yorumi5, s:yorumi3 ] ]
let s:p.tabline.right = [ [ s:yorumi5, s:yorumi3 ] ]
let s:p.tabline.tabsel = [ [ s:yorumi1, s:yorumi8 ] ]

let g:lightline#colorscheme#yorumi#palette = lightline#colorscheme#flatten(s:p)
