execute as @a run scoreboard players operation @s player_list = @s tp.id


scoreboard objectives modify player_list numberformat blank
execute as @a if score @s player_list matches 1.. run scoreboard objectives modify player_list numberformat styled {"color": "green"}