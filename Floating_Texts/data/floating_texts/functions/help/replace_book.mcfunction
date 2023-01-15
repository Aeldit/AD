
execute if data storage floating_texts:settings ft_settings{book_crafting: "ON"} run loot replace entity @s weapon.mainhand loot floating_texts:air
execute if data storage floating_texts:settings ft_settings{book_crafting: "ON"} run function floating_texts:help/get_book
advancement revoke @s only ad:book_crafting_ft
