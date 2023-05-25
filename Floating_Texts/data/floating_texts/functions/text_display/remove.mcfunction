##
 # Description:	Removes the closest text display
 # Called by:	#loot_table -> floating_texts:book.json
                #function   -> floating_texts:text_display/chat_options
##

kill @e[type=text_display,distance=..3,limit=1,sort=nearest,tag=ft_text_display]

advancement revoke @s only ad:ft_0_text_display_remove
