##
 # Description:  Sends a messages to @a when the /reload command have been executed. Sets SCOREBOARDS and STORAGE
 # Called by:    #minecraft:load
##
# Scoreboards initialisation
scoreboard objectives add ft_settings trigger
scoreboard objectives add ft_color trigger
scoreboard objectives add ft_decoration trigger
scoreboard objectives add ft_options trigger
scoreboard objectives add ft_help trigger

# Resets on reload
scoreboard players enable * ft_settings
scoreboard players enable * ft_color
scoreboard players enable * ft_decoration
scoreboard players enable * ft_options
scoreboard players enable * ft_help

# Temp
scoreboard objectives remove ft_chat_color
scoreboard objectives remove ft_edit_settings

# Revokes advancements that are used to detect things (they are sometimes not revoked correctly so reloading resolves the problem)
advancement revoke @a only ad:ft_0_book_crafting

advancement revoke @a only ad:ft_1_dark_red
advancement revoke @a only ad:ft_2_red
advancement revoke @a only ad:ft_3_gold
advancement revoke @a only ad:ft_4_yellow
advancement revoke @a only ad:ft_5_dark_green
advancement revoke @a only ad:ft_6_green
advancement revoke @a only ad:ft_7_light_blue
advancement revoke @a only ad:ft_8_cyan
advancement revoke @a only ad:ft_9_dark_blue
advancement revoke @a only ad:ft_10_blue
advancement revoke @a only ad:ft_11_pink
advancement revoke @a only ad:ft_12_purple
advancement revoke @a only ad:ft_13_white
advancement revoke @a only ad:ft_14_light_gray
advancement revoke @a only ad:ft_15_gray
advancement revoke @a only ad:ft_16_black

advancement revoke @a only ad:ft_reset_target
advancement revoke @a only ad:ft_locate_target

advancement revoke @a only ad:ft_d_1_bold_on
advancement revoke @a only ad:ft_d_2_bold_off
advancement revoke @a only ad:ft_d_3_italic_on
advancement revoke @a only ad:ft_d_4_italic_off
advancement revoke @a only ad:ft_d_5_obfuscated_on
advancement revoke @a only ad:ft_d_6_obfuscated_off
advancement revoke @a only ad:ft_d_7_strikethrough_on
advancement revoke @a only ad:ft_d_8_strikethrough_off
advancement revoke @a only ad:ft_d_9_underlined_on
advancement revoke @a only ad:ft_d_10_underlined_off

# Storage
execute unless data storage floating_texts:settings ft_settings.msg_to_action_bar run data modify storage floating_texts:settings ft_settings.msg_to_action_bar set value "ON"
execute unless data storage floating_texts:settings ft_settings.book_crafting run data modify storage floating_texts:settings ft_settings.book_crafting set value "ON"
execute unless data storage floating_texts:settings ft_settings.auto_show_title run data modify storage floating_texts:settings ft_settings.auto_show_title set value "ON"
execute unless data storage floating_texts:settings ft_settings.show_help_msg_on_reload run data modify storage floating_texts:settings ft_settings.show_help_msg_on_reload set value "ON"

# Notifies in the chat that the datapack has been reloaded
execute if data storage floating_texts:settings ft_settings{show_reload_message: "ON"} run tellraw @a [{"text":"[Floating Texts] ","color":"red"},{"text":"Reload complete !","color":"gold"}]
execute if data storage floating_texts:settings ft_settings{show_help_msg_on_reload: "ON"} run tellraw @a [{"text":"[Floating Texts] ","color":"red"},{"text":"To display the help in the chat, click on this text","color":"gold","clickEvent": {"action": "run_command","value": "/function floating_texts:help/help"}}]
