tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called the spawntp function"]

#spreadplayers -7 -65 2 10 under 48 false @s
tp @s @e[type=armor_stand, tag=spawn, sort=random, limit=1, distance=10..]