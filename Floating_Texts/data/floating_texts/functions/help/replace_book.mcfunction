##
 # Description: Replaces the book if it is renamed correctly and is in the main hand
 # Called by:   #ad:advancements/ft_book_crafting
##

execute if data storage floating_texts:settings ft_settings{book_crafting: "ON"} run loot replace entity @s weapon.mainhand loot floating_texts:air
execute if data storage floating_texts:settings ft_settings{book_crafting: "ON"} run function floating_texts:help/get_book
advancement revoke @s only ad:ft_0_book_crafting
