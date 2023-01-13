##
 # Description:  Sends a messages to @a when the /reload command have been executed. Sets SCOREBOARDS and STORAGE
 # Called by:    #minecraft:load
##

# Notifies in the chat that the datapack has been reloaded
tellraw @a [{"text":"[Floating Texts] ","color":"dark_red"},{"text":"Reload complete !","color":"gold"}]
