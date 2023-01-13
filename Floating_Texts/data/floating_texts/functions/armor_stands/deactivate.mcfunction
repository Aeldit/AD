##
 # Desciption: Sets the armor stand Visible and Vulnerable
 # Called by:  book
##

tag @e[type=armor_stand,distance=..2,limit=1,sort=nearest] add sp_selected

execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={Invisible: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] Invisible set value 0b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={Invulnerable: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] Invulnerable set value 0b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2,nbt={NoGravity: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..2] NoGravity set value 0b

tag @e[type=armor_stand,distance=..2,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
