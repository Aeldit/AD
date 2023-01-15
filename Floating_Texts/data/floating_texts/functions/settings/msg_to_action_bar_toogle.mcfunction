##
 # Description:	Enable option to send messages to the action bar
 # Called by:	#floating_texts:settings (via chat links)
##
execute store success score #ft_success ft_settings run data modify storage floating_texts:settings ft_settings.msg_to_action_bar set value "OFF"
execute unless score #ft_success ft_settings matches 1 run data modify storage floating_texts:settings ft_settings.msg_to_action_bar set value "ON"

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} run tellraw @s [{"text":"✎ Messages to action bar is now ","color":"gold"},{"storage":"floating_texts:settings", "nbt":"ft_settings.msg_to_action_bar","color": "red"}]

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} run title @s actionbar [{"text":"✎ Messages to action bar is now ","color":"gold"},{"storage":"floating_texts:settings", "nbt":"ft_settings.msg_to_action_bar","color": "green"}]

function floating_texts:settings/settings
