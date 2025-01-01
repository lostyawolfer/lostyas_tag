tag @s add getting_id
scoreboard players set @s tp.id 1

execute as @a[tag =!getting_id] if score @s tp.id matches 01 run scoreboard players set @a[tag = getting_id] tp.id 02
execute as @a[tag =!getting_id] if score @s tp.id matches 02 run scoreboard players set @a[tag = getting_id] tp.id 03
execute as @a[tag =!getting_id] if score @s tp.id matches 03 run scoreboard players set @a[tag = getting_id] tp.id 04
execute as @a[tag =!getting_id] if score @s tp.id matches 04 run scoreboard players set @a[tag = getting_id] tp.id 05
execute as @a[tag =!getting_id] if score @s tp.id matches 05 run scoreboard players set @a[tag = getting_id] tp.id 06
execute as @a[tag =!getting_id] if score @s tp.id matches 06 run scoreboard players set @a[tag = getting_id] tp.id 07
execute as @a[tag =!getting_id] if score @s tp.id matches 07 run scoreboard players set @a[tag = getting_id] tp.id 08
execute as @a[tag =!getting_id] if score @s tp.id matches 08 run scoreboard players set @a[tag = getting_id] tp.id 09
execute as @a[tag =!getting_id] if score @s tp.id matches 09 run scoreboard players set @a[tag = getting_id] tp.id 10
execute as @a[tag =!getting_id] if score @s tp.id matches 10 run scoreboard players set @a[tag = getting_id] tp.id 11
execute as @a[tag =!getting_id] if score @s tp.id matches 11 run scoreboard players set @a[tag = getting_id] tp.id 12
execute as @a[tag =!getting_id] if score @s tp.id matches 12 run scoreboard players set @a[tag = getting_id] tp.id 13
execute as @a[tag =!getting_id] if score @s tp.id matches 13 run scoreboard players set @a[tag = getting_id] tp.id 14
execute as @a[tag =!getting_id] if score @s tp.id matches 14 run scoreboard players set @a[tag = getting_id] tp.id 15
execute as @a[tag =!getting_id] if score @s tp.id matches 15 run scoreboard players set @a[tag = getting_id] tp.id 16
execute as @a[tag =!getting_id] if score @s tp.id matches 16 run scoreboard players set @a[tag = getting_id] tp.id 00

tag @s remove getting_id
tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " got a tp.id of ", {"score": {"name": "@s", "objective": "tp.id"}, "bold": true}]
#scoreboard players set @a[tag = getting_id] tp.id 0
return run scoreboard players get @s tp.id