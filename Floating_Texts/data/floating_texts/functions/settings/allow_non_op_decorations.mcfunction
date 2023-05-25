##
 # Description:	Enable option to make players glow constantly
 # Called by:	#function -> floating_texts:settings (via chat links)
##

execute store success score #ft_success ft_settings run data modify storage floating_texts:settings ft_settings.non_op_deco set value "OFF"
execute unless score #ft_success ft_settings matches 1 run data modify storage floating_texts:settings ft_settings.non_op_deco set value "ON"

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{non_op_deco: "ON"} run tellraw @s [{"text":"✎ Non OP decorations are now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "OFF"} if data storage floating_texts:settings ft_settings{non_op_deco: "OFF"} run tellraw @s [{"text":"✎ Non OP decorations are now ","color":"gold"},{"text": "OFF","color": "red"}]

execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{non_op_deco: "ON"} run title @s actionbar [{"text":"✎ Non OP decorations are now ","color":"gold"},{"text": "ON","color": "green"}]
execute if data storage floating_texts:settings ft_settings{msg_to_action_bar: "ON"} if data storage floating_texts:settings ft_settings{non_op_deco: "OFF"} run title @s actionbar [{"text":"✎ Non OP decorations are now ","color":"gold"},{"text": "OFF","color": "red"}]

# Shows the settings again with the option modified
function floating_texts:settings/settings
