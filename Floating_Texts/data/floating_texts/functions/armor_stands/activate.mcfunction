##
 # Desciption: Sets the armor stand Invisible, Invulnerable and shows its Custom Name. It also removes gravity
 # Called by:  #floating_texts:floatin_texts/set_color
 #             #floating_texts:floatin_texts/set_decoration
##

execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={Invisible: 1b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] Invisible set value 1b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={Invulnerable: 1b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] Invulnerable set value 1b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={CustomNameVisible: 1b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] CustomNameVisible set value 1b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={NoGravity: 1b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] NoGravity set value 1b
