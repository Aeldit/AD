##
 # Desciption: Sets the armor stand Visible and Vulnerable
 # Called by:  book
##

tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add sp_selected

execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3,nbt={Invisible: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3] Invisible set value 0b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3,nbt={Invulnerable: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3] Invulnerable set value 0b
execute unless entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3,nbt={NoGravity: 0b}] run data modify entity @e[type=armor_stand,tag=sp_selected,limit=1,distance=..3] NoGravity set value 0b

tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
advancement revoke @s only ad:ft_reset_target
