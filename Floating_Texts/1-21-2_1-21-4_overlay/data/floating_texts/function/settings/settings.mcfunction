##
 # Description:	Displays the options in the chat
 # Called by:	#function -> floating_texts:trigger_settings
                #function -> floating_texts:help/help
##

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text":"Floating Texts - OPTIONS\n","color":"gold","bold":true}]

# ON / OFF options status
execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "ON"} run tellraw @s [{"text":"Messages to action bar: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.msg_to_action_bar", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/msg_to_action_bar_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "OFF"} run tellraw @s [{"text":"Messages to action bar: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.msg_to_action_bar", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/msg_to_action_bar_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]

execute if data storage ad_ft:settings ft_settings{book_crafting: "ON"} run tellraw @s [{"text":"Book crafting: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.book_crafting", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/book_crafting_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
execute if data storage ad_ft:settings ft_settings{book_crafting: "OFF"} run tellraw @s [{"text":"Book crafting: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.book_crafting", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/book_crafting_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]

execute if data storage ad_ft:settings ft_settings{show_reload_message: "ON"} run tellraw @s [{"text":"Show reload message: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.show_reload_message", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/show_reload_message_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
execute if data storage ad_ft:settings ft_settings{show_reload_message: "OFF"} run tellraw @s [{"text":"Show reload message: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.show_reload_message", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/show_reload_message_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]

execute if data storage ad_ft:settings ft_settings{show_help_msg_on_reload: "ON"} run tellraw @s [{"text":"Show help message on reload: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.show_help_msg_on_reload", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/show_help_msg_on_reload_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
execute if data storage ad_ft:settings ft_settings{show_help_msg_on_reload: "OFF"} run tellraw @s [{"text":"Show help message on reload: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.show_help_msg_on_reload", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/show_help_msg_on_reload_toogle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]

execute if data storage ad_ft:settings ft_settings{non_op_deco: "ON"} run tellraw @s [{"text":"Non OP decoration: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.non_op_deco", "color":"green", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/allow_non_op_decorations"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
execute if data storage ad_ft:settings ft_settings{non_op_deco: "OFF"} run tellraw @s [{"text":"Non OP decoration: ","color":"aqua"},{"storage":"ad_ft:settings", "nbt":"ft_settings.non_op_deco", "color":"red", "clickEvent":{"action":"run_command", "value":"/function floating_texts:settings/allow_non_op_decorations"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
