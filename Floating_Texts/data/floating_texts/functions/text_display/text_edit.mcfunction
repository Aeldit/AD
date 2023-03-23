

tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add sp_selected

setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_red","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}

data modify entity @e[type=text_display,distance=..3,limit=1] text set from block ~ ~ ~ Text1

advancement revoke @s only ad:ft_edit_text
