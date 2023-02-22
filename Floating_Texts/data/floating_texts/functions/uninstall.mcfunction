
schedule clear floating_texts:tick

scoreboard objectives remove ft_settings
scoreboard objectives remove ft_color
scoreboard objectives remove ft_decoration
scoreboard objectives remove ft_edit_settings

data remove storage floating_texts:settings ft_settings.msg_to_action_bar
data remove storage floating_texts:settings ft_settings.book_crafting
data remove storage floating_texts:settings ft_settings.auto_show_title
data remove storage floating_texts:settings ft_settings.show_reload_message
data remove storage floating_texts:settings ft_settings.show_help_msg_on_reload
data remove storage floating_texts:settings ft_settings

tellraw @s [{"text":"[Floating Texts] ","color":"red"},{"text":"Successfully uninstalled the datapack","color":"gold"}]
