tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " unfroze ", {"selector": "@a[tag = hit_detect.taker]"}]
# tag @a[tag = hit_detect.giver] remove tagger
tag @a[tag = hit_detect.taker] remove special


tellraw @a [{"text": "", "color": "aqua"}, {"text": "☀ ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "aqua"}, " ", {"translate": "chat.hit.unfreeze"}, " ", {"selector": "@a[tag = hit_detect.taker]", "color": "aqua"}]

# title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 20 3

# title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, " ", {"translate": "title.hit.unfreeze_other", "color":"gold"}]
# title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.unfreeze_you_1", "color":"dark_green"}, " ", {"translate": "subtitle.hit.you", "color":"green", "bold": true}, " ", {"translate": "subtitle.hit.unfreeze_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.unfreeze_you", "color":"green", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.unfreeze_other_1", "color":"dark_aqua"}, " ", {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}]

execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:block.glass.break master @s
execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.player.hurt_freeze master @s
execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.player.hurt_on_fire master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s