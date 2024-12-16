execute if entity @a[tag = hit_detect.giver] run return 1
tag @s add hit_detect.giver

execute if entity @a[tag = hit_detect.taker] run return 2
tag @a[scores = {hit_detect.taker=1..}] add hit_detect.taker

scoreboard players set @a[tag = hit_detect.giver] hit_detect.giver 0
scoreboard players set @a[tag = hit_detect.taker] hit_detect.taker 0

execute unless entity @a[tag = hit_detect.taker] run tellraw @a ["debug/error: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit someone, but hit detection failed"]
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.giver
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.taker
execute unless entity @a[tag = hit_detect.taker] run return 404



tellraw @a ["debug: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit ", {"selector": "@a[tag = hit_detect.taker]"}]


tag @a[tag = hit_detect.giver] remove hit_detect.giver
tag @a[tag = hit_detect.taker] remove hit_detect.taker
return 0