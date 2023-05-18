##
 # Description: REmoves the different things that were used but are now useless
 # Called by:   #floating_texts:load
##

execute if data storage floating_texts:settings ft_settings.auto_show_title run data remove storage floating_texts:settings ft_settings.auto_show_title

advancement revoke @a only ad:ft_reset_target
advancement revoke @a only ad:ft_locate_target
advancement revoke @a only ad:ft_book_crafting

scoreboard objectives remove ft_chat_color
scoreboard objectives remove ft_edit_settings
