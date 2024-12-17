##
 # Description: Replaces the book if it is renamed correctly and is in the main hand
 # Called by:   #advancement -> ad:ft_book_crafting
##

execute if data storage ad_ft:settings ft_settings{book_crafting: "ON"} run item replace entity @s weapon.mainhand with minecraft:air
execute if data storage ad_ft:settings ft_settings{book_crafting: "ON"} run function floating_texts:help/get_book
advancement revoke @s only ad:ft_0_book_crafting
