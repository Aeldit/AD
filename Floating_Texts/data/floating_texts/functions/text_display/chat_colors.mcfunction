##
 # Description:	Displays the text options in the player's chat
 # Called by:	Player
##
tellraw @s [{"text":"--------------------------","color":"gold","bold":true}]
tellraw @s [{"text":"Floating Texts - TEXT OPTIONS\n","color":"gold","bold":true}]

tellraw @s [{"text": "Select the text color :","color": "gold"}]
tellraw @s [{"text": " |- ","color": "gold"},{"text": "\u25a0","color": "dark_red","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/1_dark_red"}},{"text": " "},{"text": "\u25a0","color": "red","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/2_red"}},{"text": " "},{"text": "\u25a0","color": "gold","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/3_gold"}},{"text": " "},{"text": "\u25a0","color": "yellow","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/4_yellow"}},{"text": " "},{"text": "\u25a0","color": "dark_green","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/5_dark_green"}},{"text": " "},{"text": "\u25a0","color": "green","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/6_green"}},{"text": " "},{"text": "\u25a0","color": "aqua","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/7_light_blue"}},{"text": " "},{"text": "\u25a0","color": "dark_aqua","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/8_cyan"}},{"text": " "},{"text": "\u25a0","color": "dark_blue","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/9_dark_blue"}},{"text": " "},{"text": "\u25a0","color": "blue","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/10_blue"}},{"text": " "},{"text": "\u25a0","color": "light_purple","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/11_pink"}},{"text": " "},{"text": "\u25a0","color": "dark_purple","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/12_purple"}},{"text": " "},{"text": "\u25a0","color": "white","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/13_white"}},{"text": " "},{"text": "\u25a0","color": "gray","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/14_light_gray"}},{"text": " "},{"text": "\u25a0","color": "dark_gray","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/15_gray"}},{"text": " "},{"text": "\u25a0","color": "black","clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/dye/16_black"}},{"text": " -|","color": "gold"}]

tellraw @s [{"text": "\nSelect the text decoration :","color": "gold"}]
tellraw @s [{"text": "  - "},{"text": "Bold","bold": true},{"text":" :            ","bold": false},{"text": "Yes","color": "green","bold": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/1_bold_on"}},{"text":" "},{"text": "No","color": "red","bold": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/2_bold_off"}}]
tellraw @s [{"text": "  - "},{"text": "Italic","italic": true},{"text":" :            ","italic": false},{"text": "Yes","color": "green","italic": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/3_italic_on"}},{"text":" "},{"text": "No","color": "red","italic": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/4_italic_off"}}]
tellraw @s [{"text": "  - "},{"text": "Obfuscated","obfuscated": true},{"text":" :    ","obfuscated": false},{"text": "Yes","color": "green","obfuscated": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/5_obfuscated_on"}},{"text":" "},{"text": "No","color": "red","obfuscated": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/6_obfuscated_off"}}]
tellraw @s [{"text": "  - "},{"text": "Strikethrough","strikethrough": true},{"text":" : ","strikethrough": false},{"text": "Yes","color": "green","strikethrough": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/7_strikethrough_on"}},{"text":" ","strikethrough": false},{"text": "No","color": "red","strikethrough": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/8_strikethrough_off"}}]
tellraw @s [{"text": "  - "},{"text": "Underlined","underlined": true},{"text":" :     ","underlined": false},{"text": "Yes","color": "green","underlined": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/9_underlined_on"}},{"text":" ","underlined": false},{"text": "No","color": "red","underlined": false,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/deco/10_underlined_off"}}]

tellraw @s [{"text":"\nPlace text display","color":"gold","bold":true,"clickEvent": {"action": "run_command","value": "/function floating_texts:text_display/create"}}]

tellraw @s [{"text":"\n--------------------------","color":"gold","bold":true}]