##
 # Description: Called every 6 ticks.
 # Called by:   #minecraft:load
##
schedule function floating_texts:tick 6t

execute as @a[scores={ft_edit_settings=1..2}] at @s run function floating_texts:trigger_settings
