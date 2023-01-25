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

# Revokes advancements that are used to detect things (they are sometimes not revoked correctly so reloading resolves the problem
advancement revoke @a only ad:ft_armor_stand_click
advancement revoke @a only ad:ft_book_crafting

# Storage
execute unless data storage floating_texts:settings ft_settings.msg_to_action_bar run data modify storage floating_texts:settings ft_settings.msg_to_action_bar set value "ON"
execute unless data storage floating_texts:settings ft_settings.book_crafting run data modify storage floating_texts:settings ft_settings.book_crafting set value "ON"
execute unless data storage floating_texts:settings ft_settings.auto_show_title run data modify storage floating_texts:settings ft_settings.auto_show_title set value "ON"

# Notifies in the chat that the datapack has been reloaded
tellraw @a [{"text":"[Floating Texts] ","color":"red"},{"text":"Reload complete !","color":"gold"}]
