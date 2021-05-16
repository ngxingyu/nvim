local g = vim.g

g.maplocalleader=' '


vim.o.guifont = "JuliaMono Regular:h9"
vim.wo.conceallevel=2
vim.cmd("highlight Conceal ctermbg=65 ctermfg=cyan guibg=65 guifg=cyan")
g.tex_flavor='latex'
g.vimtex_view_method='zathura'
g.vimtex_fold_enabled=1
g.vimtex_quickfix_mode=0

local vimtex_syntax_custom_cmds={}
table.insert(vimtex_syntax_custom_cmds,{name='vect', mathmode= 1, argstyle= 'bold', conceal= 1})
table.insert(vimtex_syntax_custom_cmds,{name='vect', mathmode= 1, argstyle= 'bold', conceal= 1})
table.insert(vimtex_syntax_custom_cmds,{name= 'mat' , mathmode= 1, argstyle= 'bold', conceal= 1})
table.insert(vimtex_syntax_custom_cmds,{name= 'bm'  , mathmode= 1, argstyle= 'bold', conceal= 1})
table.insert(vimtex_syntax_custom_cmds,{name= 'pmb' , mathmode= 1, argstyle= 'bold', conceal= 1})
table.insert(vimtex_syntax_custom_cmds,{name= 'Prob'    , mathmode= 1, concealchar= 'ℙ'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Expect'  , mathmode= 1, concealchar= '𝔼'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Var'     , mathmode= 1, concealchar= '𝕍'})
table.insert(vimtex_syntax_custom_cmds,{name= 'pdf'     , mathmode= 1, concealchar= '𝕡'})
table.insert(vimtex_syntax_custom_cmds,{name= 'qdf'     , mathmode= 1, concealchar= '𝕢'})
table.insert(vimtex_syntax_custom_cmds,{name= 'NormDist', mathmode= 1, concealchar= '𝒩'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Reals'   , mathmode= 1, concealchar= 'ℝ'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Imags'   , mathmode= 1, concealchar= '𝕀'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Naturals', mathmode= 1, concealchar= 'ℕ'})
table.insert(vimtex_syntax_custom_cmds,{name= 'Integers', mathmode= 1, concealchar= 'ℤ'})
table.insert(vimtex_syntax_custom_cmds,{name= 'ones'    , mathmode= 1, concealchar= '𝟙'})
table.insert(vimtex_syntax_custom_cmds,{name= 'bigO'    , mathmode= 1, concealchar= '𝒪'})
g.vimtex_syntax_custom_cmds=vimtex_syntax_custom_cmds