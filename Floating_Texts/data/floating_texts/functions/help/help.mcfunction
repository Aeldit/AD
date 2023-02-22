##
 # Description: Displays the help to the player
 # Called by:   player
##

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text": "Floating Texts - HELP\n","color":"gold","bold": true}]

tellraw @s [{"text":"Get the book","color":"yellow", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to get the book", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/function floating_texts:help/get_book"}}]

tellraw @s [{"text":"\nTo display the settings, enter ","color":"yellow", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to show the settings", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/trigger ft_edit_settings set 1"}},{"text": "/trigger ft_edit_settings set 1","color": "red"}]
tellraw @s [{"text":"To display the chat coloring options, enter ","color":"yellow", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to show the chat coloring options", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/trigger ft_edit_settings set 2"}},{"text": "/trigger ft_edit_settings set 2","color": "red"}]

tellraw @s [{"text":"\nCredits","color":"yellow", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to show the credits", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/function floating_texts:credits"}}]

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
