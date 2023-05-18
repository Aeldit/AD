
schedule clear floating_texts:tick

scoreboard objectives remove ft_settings
scoreboard objectives remove ft_color
scoreboard objectives remove ft_decoration
scoreboard objectives remove ft_options
scoreboard objectives remove ft_help

data remove storage floating_texts:settings ft_settings

tellraw @s [{"text":"[Floating Texts] ","color":"red"},{"text":"Successfully uninstalled the datapack","color":"gold"}]
