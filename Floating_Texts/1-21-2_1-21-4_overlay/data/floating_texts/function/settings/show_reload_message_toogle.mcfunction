##
 # Description:	Enable option to make players glow constantly
 # Called by:	##function -> floating_texts:settings (via chat links)
##

execute store success score #ft_success ft_settings run data modify storage ad_ft:settings ft_settings.show_reload_message set value "OFF"
execute unless score #ft_success ft_settings matches 1 run data modify storage ad_ft:settings ft_settings.show_reload_message set value "ON"

execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "OFF"} if data storage ad_ft:settings ft_settings{show_reload_message: "ON"} run tellraw @s [{"text":"✎ Show reload message is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "OFF"} if data storage ad_ft:settings ft_settings{show_reload_message: "OFF"} run tellraw @s [{"text":"✎ Show reload message is now ","color":"gold"},{"text": "OFF","color": "red"}]

execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "ON"} if data storage ad_ft:settings ft_settings{show_reload_message: "ON"} run title @s actionbar [{"text":"✎ Show reload message is now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage ad_ft:settings ft_settings{msg_to_action_bar: "ON"} if data storage ad_ft:settings ft_settings{show_reload_message: "OFF"} run title @s actionbar [{"text":"✎ Show reload message is now ","color":"gold"},{"text": "OFF","color": "red"}]

# Shows the settings again with the option modified
function floating_texts:settings/settings
