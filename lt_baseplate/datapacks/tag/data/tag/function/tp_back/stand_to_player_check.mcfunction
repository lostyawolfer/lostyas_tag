execute as @s[nbt = {OnGround:1b}                ] if score @s safezone_state matches 0 at @s unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ cave_air unless block ~ ~-.1 ~ void_air if block ~ ~ ~ #tag:allowed_to_stand_in unless block ~ ~ ~ #tag:forbidden_to_stand_on unless block ~ ~-1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/stand_to_player
execute as @s[nbt = {OnGround:1b}, tag = safezone] if score @s safezone_state matches 1 at @s unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ cave_air unless block ~ ~-.1 ~ void_air if block ~ ~ ~ cave_air if block ~ ~ ~ #tag:allowed_to_stand_in unless block ~ ~ ~ #tag:forbidden_to_stand_on unless block ~ ~-1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/stand_to_player
execute as @s[nbt = {OnGround:1b}, tag = safezone] if score @s safezone_state matches 1 at @s unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ cave_air unless block ~ ~-.1 ~ void_air if block ~ ~1 ~ cave_air if block ~ ~ ~ #tag:allowed_to_stand_in unless block ~ ~ ~ #tag:forbidden_to_stand_on unless block ~ ~-1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/stand_to_player
execute as @s[nbt = {OnGround:1b}, tag =!safezone] if score @s safezone_state matches -1 at @s unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ cave_air unless block ~ ~-.1 ~ void_air unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air if block ~ ~ ~ #tag:allowed_to_stand_in unless block ~ ~ ~ #tag:forbidden_to_stand_on unless block ~ ~-1 ~ #tag:forbidden_to_stand_on run function tag:tp_back/stand_to_player



#execute as @e[type=armor_stand, tag=tp_back] at @s run particle dust{r:1, g:1, b:1} ~ ~-255 ~ .3 .5 .3 0 20
#execute as @e[type=armor_stand, tag=tp_back] at @s run particle dust{color:2934916, scale:1} ~ ~-254 ~ .3 .5 .3 0 3 normal @a