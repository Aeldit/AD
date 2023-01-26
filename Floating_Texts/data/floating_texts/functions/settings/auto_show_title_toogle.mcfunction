##
 # Description:	Enable option to show the armor stand automatically when right clicking it with a nametag
 # Called by:	#floating_texts:settings (via chat links)
##

execute store success score #ft_success ft_settings run data modify storage floating_texts:settings ft_settings.auto_show_title set value "OFF"
execute unless score #ft_success ft_settings matches 1 run data modify storage floating_texts:settings ft_settings.auto_show_title set value "ON"

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{auto_show_title: "ON"} run tellraw @s [{"text":"✎ Auto show stand name is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{auto_show_title: "OFF"} run tellraw @s [{"text":"✎ Auto show stand name is now ","color":"gold"},{"text": "OFF","color": "red"}]

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{auto_show_title: "ON"} run title @s actionbar [{"text":"✎ Auto show stand name is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{auto_show_title: "OFF"} run title @s actionbar [{"text":"✎ Auto show stand name is now ","color":"gold"},{"text": "OFF","color": "red"}]

# Shows the settings again with the option modified
function floating_texts:settings/settings
