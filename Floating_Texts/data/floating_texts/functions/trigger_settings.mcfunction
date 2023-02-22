

execute if entity @s[scores={ft_edit_settings=1}] run function floating_texts:settings/settings
execute if entity @s[scores={ft_edit_settings=2}] run function floating_texts:floating_texts/chat_colors

scoreboard players set @s ft_edit_settings 0
scoreboard players enable @s ft_edit_settings
