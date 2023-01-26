##
 # Description: Shows the credits to the player
 # Called by:   Book
##

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text": "Floating Texts - CREDITS\n","color":"gold","bold": true}]

tellraw @s [{"text": "Original book idea from VanillaTweaks ArmorStatues datapack","color": "white"},{"text": " (see https://vanillatweaks.net/)","color": "yellow","hoverEvent": {"action": "show_text","value": {"text": "Click to follow the link to their website","color": "yellow"}},"clickEvent": {"action": "open_url","value": "https://vanillatweaks.net/"}}]
tellraw @s [{"text": "Help for the signs things from ","color": "white"},{"text": "Dhranios","color": "red"},{"text": " on Reddit","color": "white"}]
tellraw @s [{"text": "The rest has been made by me","color": "white"},{"text": " (Aeldit)","color": "dark_red","hoverEvent": {"action": "show_text","value": {"text": "Click to follow the link to my Modrinth profile","color": "yellow"}},"clickEvent": {"action": "open_url","value": "https://modrinth.com/user/Aeldit"}}]

tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
