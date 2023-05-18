##
 # Description: Display in the player's chat the help corresponding to the trigger it called.
 # Called by:   #schedule_function -> floating_texts:tick
##

execute if entity @s[scores={ft_help=1}] run function floating_texts:help/help
execute if entity @s[scores={ft_help=2}] run function floating_texts:help/help_combinations

scoreboard players set @s ft_help 0
scoreboard players enable @s ft_help
