execute if score @s menu matches 300 if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 1, price: 4, page: 310}
execute if score @s menu matches 300 if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 2, price: 4, page: 310}
execute if score @s menu matches 300 if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 3, price: 5, page: 310}
execute if score @s menu matches 300 if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 4, price: 2, page: 310}
execute if score @s menu matches 300 if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 5, price: 2, page: 310}
execute if score @s menu matches 300 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 6, price: 7, page: 320}
execute if score @s menu matches 300 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 7, price: 3, page: 320}
execute if score @s menu matches 300 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: gh, id: 8, price: 2, page: 320}


execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 0, id: 1, price: 4, price_count: two, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 1, id: 2, price: 4, price_count: two, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 2, id: 3, price: 5, price_count: many, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 3, id: 4, price: 2, price_count: two, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 4, id: 5, price: 2, price_count: two, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/product {product: gh, slot: 5, id: 6, price: 7, price_count: many, page: 310, command: 300}
execute if score @s menu matches 310 run function tag:items/menu/items/next_page {points_to: 320}

execute if score @s menu matches 320 run function tag:items/menu/items/prev_page {points_to: 310}
execute if score @s menu matches 320 run function tag:items/menu/items/product {product: gh, slot: 1, id: 7, price: 3, price_count: two, page: 320, command: 300}
execute if score @s menu matches 320 run function tag:items/menu/items/product {product: gh, slot: 2, id: 8, price: 2, price_count: two, page: 320, command: 300}
execute if score @s menu matches 320 run item replace entity @s container.3 with air
execute if score @s menu matches 320 run item replace entity @s container.4 with air
execute if score @s menu matches 320 run item replace entity @s container.5 with air
execute if score @s menu matches 320 run item replace entity @s container.6 with air

execute if score @s menu.selecting matches 1.. if score @s menu.trigger matches 1.. run stopsound @s
execute if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.0 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.1 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.2 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.3 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.4 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.5 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.6 master @s ~ ~ ~ .2 1 .2
execute if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.7 master @s ~ ~ ~ .2 1 .2