
tag @e[type=armor_stand,distance=..2,limit=1,sort=nearest] add sp_selected

setblock ~ ~ ~ oak_sign{Text1: '{"color":"aqua","nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] CustomName set from block ~ ~ ~ Text1
setblock ~ ~ ~ air

function floating_texts:armor_stands/activate

tag @e[type=armor_stand,distance=..2,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
