##
 # Description: Places a sign with the targeted armor stand's text and the selected text decoration, then sets this text back on the armor stand
 # Called by:   #floating_texts:tick
##
# Adds the selected tag to the targeted armor stand
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest] add sp_selected

# Sets the decoration on the sign's text
#ver=1.19.4
execute if entity @s[scores={ft_decoration=1}] run setblock ~ ~ ~ oak_sign{Text1: '{"bold":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=2}] run setblock ~ ~ ~ oak_sign{Text1: '{"bold":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=3}] run setblock ~ ~ ~ oak_sign{Text1: '{"italic":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=4}] run setblock ~ ~ ~ oak_sign{Text1: '{"italic":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=5}] run setblock ~ ~ ~ oak_sign{Text1: '{"obfuscated":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=6}] run setblock ~ ~ ~ oak_sign{Text1: '{"obfuscated":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=7}] run setblock ~ ~ ~ oak_sign{Text1: '{"strikethrough":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=8}] run setblock ~ ~ ~ oak_sign{Text1: '{"strikethrough":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=9}] run setblock ~ ~ ~ oak_sign{Text1: '{"underlined":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}
execute if entity @s[scores={ft_decoration=10}] run setblock ~ ~ ~ oak_sign{Text1: '{"underlined":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}'}

# Copy the text of the sign to the armor stand's name
data modify entity @e[type=armor_stand,distance=..3,limit=1,tag=sp_selected] CustomName set from block ~ ~ ~ Text1
#ver=1.20.x-1.21.x
execute if entity @s[scores={ft_decoration=1}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"bold":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=2}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"bold":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=3}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"italic":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=4}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"italic":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=5}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"obfuscated":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=6}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"obfuscated":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=7}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"strikethrough":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=8}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"strikethrough":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=9}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"underlined":true,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}
execute if entity @s[scores={ft_decoration=10}] run setblock ~ ~ ~ oak_sign{front_text: {messages: ['{"underlined":false,"nbt":"CustomName","entity":"@e[tag=sp_selected]","interpret":true}', '{"text":""}', '{"text":""}', '{"text":""}']}}

# Copy the text of the sign to the armor stand's name
data modify entity @e[type=armor_stand,distance=..3,limit=1,tag=sp_selected] CustomName set from block ~ ~ ~ front_text.messages[0]
#endver

# Removes the sign
setblock ~ ~ ~ air

# Sets the armor stand Invisible, Invulnerable and shows its Custom Name. Also removes its gravity
function floating_texts:armor_stands/activate

# Adds the 'ft_text_display' tag so we can know at any time which armor stand was modified by this datapack
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest,tag=sp_selected] add ft_text_display

# Removes tags and resets scores
tag @e[type=armor_stand,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
scoreboard players set @s ft_decoration 0
scoreboard players enable @s ft_decoration
