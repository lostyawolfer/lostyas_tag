execute as @a run scoreboard players operation @s player_list = @s points


execute unless entity @a[scores={player_list=1..}] run scoreboard objectives modify player_list numberformat blank
execute if entity @a[scores={player_list=1..}] run scoreboard objectives modify player_list numberformat styled {"color": "green"}