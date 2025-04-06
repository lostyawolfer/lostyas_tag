execute if score @s menu matches 100 if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 1, price: 10, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 2, price: 12, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 3, price: 10, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 4, price: 13, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 5, price: 15, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 6, price: 9, page: 110}
execute if score @s menu matches 100 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 7, price: 17, page: 120}
execute if score @s menu matches 100 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: ab, id: 8, price: 18, page: 120}


execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 0, id: 1, price: 10, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 1, id: 2, price: 12, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 2, id: 3, price: 10, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 3, id: 4, price: 13, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 4, id: 5, price: 15, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/product {product: ab, slot: 5, id: 6, price: 9, price_count: many, page: 110, command: 100}
execute if score @s menu matches 110 run function tag:items/menu/items/next_page {points_to: 120}

execute if score @s menu matches 120 run function tag:items/menu/items/prev_page {points_to: 110}
execute if score @s menu matches 120 run function tag:items/menu/items/product {product: ab, slot: 1, id: 7, price: 17, price_count: many, page: 120, command: 100}
execute if score @s menu matches 120 run function tag:items/menu/items/product {product: ab, slot: 2, id: 8, price: 18, price_count: many, page: 120, command: 100}
execute if score @s menu matches 120 run item replace entity @s container.3 with air
execute if score @s menu matches 120 run item replace entity @s container.4 with air
execute if score @s menu matches 120 run item replace entity @s container.5 with air
execute if score @s menu matches 120 run item replace entity @s container.6 with air



execute if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 1, cd: 30, cd_format: sec, cd_count: many, use: 00, use_format: ticks, use_count: many}
execute if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 2, cd: 40, cd_format: sec, cd_count: many, use: 03, use_format: ticks, use_count: two}
execute if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 3, cd: 35, cd_format: sec, cd_count: many, use: 10, use_format: sec, use_count: many}
execute if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 4, cd: 36, cd_format: sec, cd_count: many, use: 07, use_format: sec, use_count: many}
execute if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 5, cd: 45, cd_format: sec, cd_count: many, use: 05, use_format: sec, use_count: many}
execute if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 6, cd: 35, cd_format: sec, cd_count: many, use: 10, use_format: sec, use_count: many}
execute if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 7, cd: 60, cd_format: sec, cd_count: many, use: 10, use_format: ticks, use_count: many}
execute if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: ab, id: 8, cd: 90, cd_format: sec, cd_count: many, use: 90, use_format: sec, use_count: many}