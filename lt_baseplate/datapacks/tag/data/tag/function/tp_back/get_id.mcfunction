tag @s add getting_id
scoreboard players set @s tp.id 0

execute as @a[tag =!getting_id] unless score @s tp.id matches 16 run scoreboard players set @a[tag = getting_id] tp.id 16
execute as @a[tag =!getting_id] unless score @s tp.id matches 15 run scoreboard players set @a[tag = getting_id] tp.id 15
execute as @a[tag =!getting_id] unless score @s tp.id matches 14 run scoreboard players set @a[tag = getting_id] tp.id 14
execute as @a[tag =!getting_id] unless score @s tp.id matches 13 run scoreboard players set @a[tag = getting_id] tp.id 13
execute as @a[tag =!getting_id] unless score @s tp.id matches 12 run scoreboard players set @a[tag = getting_id] tp.id 12
execute as @a[tag =!getting_id] unless score @s tp.id matches 11 run scoreboard players set @a[tag = getting_id] tp.id 11
execute as @a[tag =!getting_id] unless score @s tp.id matches 10 run scoreboard players set @a[tag = getting_id] tp.id 10
execute as @a[tag =!getting_id] unless score @s tp.id matches 9 run scoreboard players set @a[tag = getting_id] tp.id 9
execute as @a[tag =!getting_id] unless score @s tp.id matches 8 run scoreboard players set @a[tag = getting_id] tp.id 8
execute as @a[tag =!getting_id] unless score @s tp.id matches 7 run scoreboard players set @a[tag = getting_id] tp.id 7
execute as @a[tag =!getting_id] unless score @s tp.id matches 6 run scoreboard players set @a[tag = getting_id] tp.id 6
execute as @a[tag =!getting_id] unless score @s tp.id matches 5 run scoreboard players set @a[tag = getting_id] tp.id 5
execute as @a[tag =!getting_id] unless score @s tp.id matches 4 run scoreboard players set @a[tag = getting_id] tp.id 4
execute as @a[tag =!getting_id] unless score @s tp.id matches 3 run scoreboard players set @a[tag = getting_id] tp.id 3
execute as @a[tag =!getting_id] unless score @s tp.id matches 2 run scoreboard players set @a[tag = getting_id] tp.id 2
execute as @a[tag =!getting_id] unless score @s tp.id matches 1 run scoreboard players set @a[tag = getting_id] tp.id 1

execute unless entity @a[tag =!getting_id] run scoreboard players set @s tp.id 1

tag @s remove getting_id
tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " got a tp.id of ", {"score": {"name": "@s", "objective": "tp.id"}, "bold": true}]
#scoreboard players set @a[tag = getting_id] tp.id 0
return run scoreboard players get @s tp.id