##
 # Description: When using a name_tag on an armor stand, and if the 'auto_show_title' option is ON,
 #              the name of the clicked armor stand is shown
 # Called by:   #ad:advancements/ft_0_armor_stand_click
##

execute if data storage ad_ft:settings ft_settings{auto_show_title: "ON"} run execute as @e[type=armor_stand,distance=..3,limit=1,sort=nearest] at @s run data modify entity @s CustomNameVisible set value 1b

advancement revoke @s only ad:ft_0_armor_stand_click
