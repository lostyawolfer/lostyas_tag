tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called the spawntp function"]

#spreadplayers -7 -65 2 10 under 48 false @s
execute at @s if score map server matches -1 run execute in overworld run tp @s ~ ~ ~
execute at @s if score map server matches 0 run execute in lt_lobby run tp @s ~ ~ ~
execute at @s if score map server matches 1 run execute in lt_playground run tp @s ~ ~ ~
execute at @s if score map server matches 2 run execute in lt_playground_winter run tp @s ~ ~ ~
execute at @s run tp @s @e[type=armor_stand, tag=spawn, sort=random, limit=1, distance=10..]