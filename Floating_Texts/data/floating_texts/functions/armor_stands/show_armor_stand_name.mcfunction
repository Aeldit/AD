##
 # Description: If the option is ON, shows the name of the clicked armor stand (if the click was executed with a name_tag in the hand)
 # Called by:   #ad:advancements/ft_armor_stand_click
##

execute if data storage floating_texts:settings ft_settings{auto_show_title: "ON"} run execute as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] at @s run data modify entity @s CustomNameVisible set value 1b

advancement revoke @s only ad:ft_0_armor_stand_click
