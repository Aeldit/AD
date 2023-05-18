##
 # Description: Places a sign with the targeted armor stand's text and the selected color, then sets this text on the text_display
 # Called by:   #advancements -> ad:ft_0_text_display_click
##

tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add sp_selected
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=ft_text_display] add sp_selected_2

execute run setblock ~ ~ ~ oak_sign{Text1: '{"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}

data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected_2] text set from block ~ ~ ~ Text1

# Removes the sign
setblock ~ ~ ~ air

tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=sp_selected_2] remove sp_selected_2
scoreboard players set @s ft_color 0
scoreboard players enable @s ft_color

advancement revoke @s only ad:ft_0_text_display_click
