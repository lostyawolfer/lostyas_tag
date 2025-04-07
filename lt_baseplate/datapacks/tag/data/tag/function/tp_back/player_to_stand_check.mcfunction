execute if entity @s[gamemode = adventure] unless block ~ ~ ~ #tag:allowed_to_stand_in run scoreboard players add @s tp.timer 1
execute if entity @s[gamemode = adventure] if block ~ ~ ~ #tag:allowed_to_stand_in run scoreboard players reset @s tp.timer
execute unless entity @s[gamemode = adventure] run scoreboard players reset @s tp.timer

execute if score @s tp.timer matches 1 run tp @s ~ ~1 ~
execute if score @s tp.timer matches 2 run tp @s ~ ~1 ~
execute if score @s tp.timer matches 2 unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air run function tag:tp_back/player_to_stand/in_blocks
execute if score @s tp.timer matches 3.. run function tag:tp_back/player_to_stand/in_blocks


execute if entity @s[gamemode = adventure] if block ~ ~1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/player_to_stand/outside_map
execute if entity @s[gamemode = adventure] if block ~ ~ ~ #tag:forbidden_to_stand_on run function tag:tp_back/player_to_stand/outside_map
execute if entity @s[gamemode = adventure] if block ~ ~-.1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/player_to_stand/outside_map

execute if entity @s[gamemode = adventure] if score @s stat.current_hight matches 125.. run function tag:tp_back/player_to_stand/outside_map
execute if entity @s[gamemode = adventure] if score @s stat.current_hight matches ..-64 run function tag:tp_back/player_to_stand/outside_map

execute if entity @s[gamemode = adventure, scores = {safezone_state =-1}, tag =!safezone] if block ~ ~ ~ cave_air run function tag:tp_back/player_to_stand/no_safezone
execute if entity @s[gamemode = adventure, scores = {safezone_state =-1}, tag =!safezone] if block ~ ~1 ~ cave_air run function tag:tp_back/player_to_stand/no_safezone
execute if entity @s[gamemode = adventure, scores = {safezone_state = 1}, tag = safezone] unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function tag:tp_back/player_to_stand/no_safezone_exit