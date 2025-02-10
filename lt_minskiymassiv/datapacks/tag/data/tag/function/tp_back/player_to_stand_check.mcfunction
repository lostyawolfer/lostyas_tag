execute if entity @s[gamemode = adventure] unless block ~ ~ ~ #tag:allowed_to_stand_in run function tag:tp_back/player_to_stand/in_blocks
execute if entity @s[gamemode = adventure] if block ~ ~ ~ #tag:forbidden_to_stand_on run function tag:tp_back/player_to_stand/outside_map
execute if entity @s[gamemode = adventure] if block ~ ~-.1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/player_to_stand/outside_map

execute if entity @s[gamemode = adventure, scores = {safezone_state =-1}, tag =!safezone] if block ~ ~ ~ cave_air run function tag:tp_back/player_to_stand/no_safezone
execute if entity @s[gamemode = adventure, scores = {safezone_state =-1}, tag =!safezone] if block ~ ~1 ~ cave_air run function tag:tp_back/player_to_stand/no_safezone
execute if entity @s[gamemode = adventure, scores = {safezone_state = 1}, tag = safezone] unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function tag:tp_back/player_to_stand/no_safezone_exit