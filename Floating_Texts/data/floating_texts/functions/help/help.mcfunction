##
 # Description: Displays the help to the player
 # Called by:   player
##

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text": "Floating Texts - HELP\n","color":"gold","bold": true}]

tellraw @s [{"text":"Get the book","color":"aqua", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to get the book", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/function floating_texts:help/get_book"}}]
tellraw @s [{"text":"Settings","color":"aqua", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to show the settings", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/function floating_texts:settings/settings"}}]

tellraw @s [{"text":"\nCredits","color":"aqua", "hoverEvent":{"action":"show_text", "contents":{"text":"Click to show the credits", "color":"yellow"}},"clickEvent": {"action": "run_command","value": "/function floating_texts:credits"}}]

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
