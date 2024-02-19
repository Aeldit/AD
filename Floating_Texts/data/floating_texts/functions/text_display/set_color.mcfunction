##
 # Description: Places a sign with the targeted armor stand's text and the selected color, then sets this text back on the armor stand
 # Called by:   #ad:advancements
##
# Adds the selected tag to the targeted armor_stand
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add sp_selected

# Sets the color on the sign
execute if entity @s[scores={ft_color=1}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_red","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=2}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"red","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=3}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"gold","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=4}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"yellow","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=5}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_green","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=6}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"green","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=7}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"aqua","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=8}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_aqua","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=9}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_blue","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=10}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"blue","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=11}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"light_purple","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=12}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_purple","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=13}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"white","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=14}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"gray","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=15}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"dark_gray","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}
execute if entity @s[scores={ft_color=16}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"color":"black","nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}']}}

# Copy the text of the sign to the armor stand's name
data modify entity @e[type=armor_stand,distance=..3,limit=1,tag=sp_selected] CustomName set from block ~ ~ ~ front_text.messages[0]

# Removes the sign
setblock ~ ~ ~ air

# Sets the armor stand Invisible, Invulnerable and shows its Custom Name. Also removes its gravity
function floating_texts:armor_stands/activate

# Removes tags and resets scores
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
scoreboard players set @s ft_color 0
scoreboard players enable @s ft_color
