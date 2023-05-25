##
 # Description: Places a sign with the targeted armor stand's text and the selected text decoration, then sets this text back on the armor stand
 # Called by:   #floating_texts:tick
##
# Adds the selected tag to the targeted armor stand
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=ft_text_display] add sp_selected

# Sets the decoration on the sign's text
execute if entity @s[scores={ft_decoration=1}] run setblock ~ ~ ~ oak_sign{Text1: '{"bold":true,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=2}] run setblock ~ ~ ~ oak_sign{Text1: '{"bold":false,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=3}] run setblock ~ ~ ~ oak_sign{Text1: '{"italic":true,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=4}] run setblock ~ ~ ~ oak_sign{Text1: '{"italic":false,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=5}] run setblock ~ ~ ~ oak_sign{Text1: '{"obfuscated":true,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=6}] run setblock ~ ~ ~ oak_sign{Text1: '{"obfuscated":false,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=7}] run setblock ~ ~ ~ oak_sign{Text1: '{"strikethrough":true,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=8}] run setblock ~ ~ ~ oak_sign{Text1: '{"strikethrough":false,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=9}] run setblock ~ ~ ~ oak_sign{Text1: '{"underlined":true,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=10}] run setblock ~ ~ ~ oak_sign{Text1: '{"underlined":false,"nbt":"text","entity":"@e[tag=sp_selected]","interpret":true}'}

# Copy the text of the sign to the armor stand's name
data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text set from block ~ ~ ~ Text1

# Removes the sign
setblock ~ ~ ~ air

# Removes tags and resets scores
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
scoreboard players set @s ft_decoration 0
scoreboard players enable @s ft_decoration
