##
 # Description: Called every 6 ticks.
 # Called by:   #minecraft:load
##
schedule function floating_texts:tick 6t

execute as @a[scores={ft_color=1..}] at @s run function floating_texts:floating_texts/set_color
execute as @a[scores={ft_decoration=1..}] at @s run function floating_texts:floating_texts/set_decoration
