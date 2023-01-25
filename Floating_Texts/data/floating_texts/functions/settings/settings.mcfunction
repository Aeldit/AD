##
 # Description:	Displays the options in the chat
 # Called by:	Player
##
tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text":"Floating Texts - Options\n","color":"gold","bold":true}]

# ON / OFF options status
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} run tellraw @s [{"text":"Messages to action bar: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.msg_to_action_bar", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/msg_to_action_bar_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} run tellraw @s [{"text":"Messages to action bar: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.msg_to_action_bar", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/msg_to_action_bar_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]

execute if data storage floating_texts:settings ft_settings{book_crafting: "ON"} run tellraw @s [{"text":"Book crafting: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.book_crafting", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/book_crafting_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]
execute if data storage floating_texts:settings ft_settings{book_crafting: "OFF"} run tellraw @s [{"text":"Book crafting: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.book_crafting", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/book_crafting_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]

execute if data storage floating_texts:settings ft_settings{auto_show_title: "ON"} run tellraw @s [{"text":"Auto show stand name: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.auto_show_title", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/auto_show_title_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]
execute if data storage floating_texts:settings ft_settings{auto_show_title: "OFF"} run tellraw @s [{"text":"Auto show stand name: ","color":"aqua"},{"storage":"floating_texts:settings", "nbt":"ft_settings.auto_show_title", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/auto_show_title_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"gold"}}}]

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
