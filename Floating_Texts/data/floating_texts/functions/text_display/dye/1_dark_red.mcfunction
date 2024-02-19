
execute at @s run trigger ft_color set 1

execute if data storage floating_texts:settings ft_settings{non_op_deco: "OFF"} run function floating_texts:text_display/set_color
execute if data storage floating_texts:settings ft_settings{non_op_deco: "ON"} run function floating_texts:messages/not_op

advancement revoke @s only ad:ft_1_dark_red
