execute if score @s menu matches 200 if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 1, price: 17, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 2, price: 20, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 3, price: 19, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 4, price: 21, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 5, price: 22, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 6, price: 15, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 7, price: 25, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 8, price: 20, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 9 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 9, price: 25, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 10 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 10, price: 13, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 11 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 11, price: 26, page: 220}


execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 0, id: 1, price: 17, price_count: many, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 1, id: 2, price: 20, price_count: many, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 2, id: 3, price: 19, price_count: many, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 3, id: 4, price: 21, price_count: one, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 4, id: 5, price: 22, price_count: two, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 5, id: 6, price: 15, price_count: many, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/next_page {points_to: 220}

execute if score @s menu matches 220 run function tag:items/menu/items/prev_page {points_to: 210}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 1, id: 7, price: 25, price_count: many, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 2, id: 8, price: 20, price_count: many, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 3, id: 9, price: 25, price_count: many, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 4, id: 10, price: 13, price_count: many, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 5, id: 11, price: 26, price_count: many, page: 220, command: 200}
execute if score @s menu matches 220 run item replace entity @s container.6 with air


execute if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 1,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 2,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 3,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 4,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 5,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 6,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 7,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 8,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 9 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 9,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 10 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 10,  cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 11 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 11,  cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}