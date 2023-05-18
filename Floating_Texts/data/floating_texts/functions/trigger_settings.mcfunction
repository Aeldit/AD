##
 # Description: Display in the player's chat the options corresponding to the trigger it called
 # Called by:   #schedule_function -> floating_texts:tick
##

execute if entity @s[scores={ft_options=1}] run function floating_texts:settings/settings
execute if entity @s[scores={ft_options=2}] run function floating_texts:text_display/chat_options

scoreboard players set @s ft_options 0
scoreboard players enable @s ft_options
