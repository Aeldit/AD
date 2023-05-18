##
 # Description: Places a sign with the targeted armor stand's text and the selected color, then sets this text back on the armor stand
 # Called by:   #ad:advancements
##
# Adds the selected tag to the targeted text_display
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=ft_text_display] add sp_selected

# Sets the color on the sign
execute if entity @s[scores={ft_color=1}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_red","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=2}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"red","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=3}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"gold","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=4}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"yellow","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=5}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_green","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=6}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"green","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=7}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"aqua","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=8}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_aqua","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=9}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_blue","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=10}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"blue","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=11}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"light_purple","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=12}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_purple","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=13}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"white","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=14}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"gray","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=15}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"dark_gray","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_color=16}] run setblock ~ ~ ~ oak_sign{Text1: '{"color":"black","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}

# Copy the text of the sign to the armor stand's name
data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text set from block ~ ~ ~ Text1

# Removes the sign
setblock ~ ~ ~ air

# Removes tags and resets scores
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
scoreboard players set @s ft_color 0
scoreboard players enable @s ft_color
