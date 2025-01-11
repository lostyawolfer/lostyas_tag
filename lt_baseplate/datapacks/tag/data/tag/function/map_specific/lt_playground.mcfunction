scoreboard players add lt_playground server 1


execute in lt_playground if score lt_playground server matches 2 run fill 46 78 -72 34 78 -72 minecraft:redstone_block

execute in lt_playground if score lt_playground server matches 4 run fill 46 79 -72 34 79 -72 minecraft:redstone_block
execute in lt_playground if score lt_playground server matches 4 run fill 46 78 -72 34 78 -72 minecraft:air

execute in lt_playground if score lt_playground server matches 6 run fill 46 80 -72 34 80 -72 minecraft:redstone_block
execute in lt_playground if score lt_playground server matches 6 run fill 46 79 -72 34 79 -72 minecraft:air

execute in lt_playground if score lt_playground server matches 8 run fill 46 81 -72 34 81 -72 minecraft:redstone_block
execute in lt_playground if score lt_playground server matches 8 run fill 46 80 -72 34 80 -72 minecraft:air

execute in lt_playground if score lt_playground server matches 10 run fill 46 82 -72 34 82 -72 minecraft:redstone_block
execute in lt_playground if score lt_playground server matches 10 run fill 46 81 -72 34 81 -72 minecraft:air

execute in lt_playground if score lt_playground server matches 12 run fill 46 83 -72 34 83 -72 minecraft:redstone_block
execute in lt_playground if score lt_playground server matches 12 run fill 46 82 -72 34 82 -72 minecraft:air

execute in lt_playground if score lt_playground server matches 14 run fill 46 83 -72 34 83 -72 minecraft:air



execute in lt_playground_winter if score lt_playground server matches 2 run fill 46 78 -72 34 78 -72 minecraft:redstone_block

execute in lt_playground_winter if score lt_playground server matches 4 run fill 46 79 -72 34 79 -72 minecraft:redstone_block
execute in lt_playground_winter if score lt_playground server matches 4 run fill 46 78 -72 34 78 -72 minecraft:air

execute in lt_playground_winter if score lt_playground server matches 6 run fill 46 80 -72 34 80 -72 minecraft:redstone_block
execute in lt_playground_winter if score lt_playground server matches 6 run fill 46 79 -72 34 79 -72 minecraft:air

execute in lt_playground_winter if score lt_playground server matches 8 run fill 46 81 -72 34 81 -72 minecraft:redstone_block
execute in lt_playground_winter if score lt_playground server matches 8 run fill 46 80 -72 34 80 -72 minecraft:air

execute in lt_playground_winter if score lt_playground server matches 10 run fill 46 82 -72 34 82 -72 minecraft:redstone_block
execute in lt_playground_winter if score lt_playground server matches 10 run fill 46 81 -72 34 81 -72 minecraft:air

execute in lt_playground_winter if score lt_playground server matches 12 run fill 46 83 -72 34 83 -72 minecraft:redstone_block
execute in lt_playground_winter if score lt_playground server matches 12 run fill 46 82 -72 34 82 -72 minecraft:air

execute in lt_playground_winter if score lt_playground server matches 14 run fill 46 83 -72 34 83 -72 minecraft:air



execute as @a[nbt={Dimension:"minecraft:lt_playground_winter"}] at @s run particle snowflake ~ ~5 ~ 20 20 20 .1 30 force



execute if score lt_playground server matches 20.. run scoreboard players set lt_playground server 0