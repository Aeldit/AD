##
 # Description:  Sends a messages to @a when the /reload command have been executed. Sets SCOREBOARDS and STORAGE
 # Called by:    #minecraft:load
##
# Scoreboards initialisation
scoreboard objectives add ft_settings trigger
scoreboard objectives add ft_color trigger
scoreboard objectives add ft_decoration trigger

# Resets on reload
scoreboard players enable * ft_settings
scoreboard players enable * ft_color
scoreboard players enable * ft_decoration

# Storage
execute unless data storage floating_texts:settings ft_settings.msg_to_action_bar run data modify storage floating_texts:settings ft_settings.msg_to_action_bar set value "ON"
execute unless data storage floating_texts:settings ft_settings.book_crafting run data modify storage floating_texts:settings ft_settings.book_crafting set value "ON"

# Notifies in the chat that the datapack has been reloaded
tellraw @a [{"text":"[Floating Texts] ","color":"red"},{"text":"Reload complete !","color":"gold"}]
