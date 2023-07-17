##
 # Description: Places a sign with the targeted armor stand's text and the selected color, then sets this text on the text_display
 # Called by:   #function -> floating_texts:text_display/chat_options
##

summon minecraft:text_display ~ ~2 ~ {text: '{"text":""}', see_through: 1b, default_background: 1b, billboard: "center", Tags: ["ft_text_display"]}
tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=ft_text_display] add sp_selected

data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text set from block ~ ~ ~ front_text.messages[0]
# data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text append from block ~ ~ ~ front_text.messages[1]
# data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text append from block ~ ~ ~ front_text.messages[2]
# data modify entity @e[type=text_display,distance=..3,limit=1,tag=sp_selected] text append from block ~ ~ ~ front_text.messages[3]

tag @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=sp_selected] remove sp_selected
advancement revoke @s only ad:ft_0_text_display_create
