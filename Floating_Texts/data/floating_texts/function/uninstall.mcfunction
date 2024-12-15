##
 # Description: Must be run before removing the datapack because it removes all the things added by the pack (they are not removed when removing a pack from a world)
 # Called by:   #function -> floating_texts:help/help
##

scoreboard objectives remove ft_color
scoreboard objectives remove ft_decoration

data remove storage ad_ft:settings ft_settings

tellraw @s [{"text":"[Floating Texts] ","color":"red"},{"text":"Successfully uninstalled the datapack, you can now remove it from the datapacks folder","color":"gold"}]
