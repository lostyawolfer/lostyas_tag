execute if score @s menu matches 200 if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 1, price: 10, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 2, price: 12, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 3, price: 10, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 4, price: 13, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 5, price: 15, page: 210}
execute if score @s menu matches 200 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 6, price: 9, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 7, price: 17, page: 220}
execute if score @s menu matches 200 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/selector_check {product: pa, id: 8, price: 17, page: 220}


execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 0, id: 1, price: 10, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 1, id: 2, price: 12, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 2, id: 3, price: 10, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 3, id: 4, price: 13, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/product {product: pa, slot: 4, id: 5, price: 15, page: 210, command: 200}
execute if score @s menu matches 210 run function tag:items/menu/items/next_page {points_to: 220}

execute if score @s menu matches 220 run function tag:items/menu/items/prev_page {points_to: 210}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 1, id: 6, price: 9, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 2, id: 7, price: 17, page: 220, command: 200}
execute if score @s menu matches 220 run function tag:items/menu/items/product {product: pa, slot: 3, id: 8, price: 17, page: 220, command: 200}
execute if score @s menu matches 220 run item replace entity @s container.4 with air
execute if score @s menu matches 220 run item replace entity @s container.5 with air
execute if score @s menu matches 220 run item replace entity @s container.6 with air


execute if score @s menu.selecting matches 1 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 1,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 2 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 2,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 3 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 3,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 4 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 4,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 5 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 5,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 6,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 7,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}
execute if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run function tag:items/menu/show_info {product: pa, id: 8,    cd: 0, cd_format: 0, cd_count: 0, use: 0, use_format: 0, use_count: 0}