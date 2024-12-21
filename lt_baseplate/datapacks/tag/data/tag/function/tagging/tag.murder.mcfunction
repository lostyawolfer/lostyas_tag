tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " killed ", {"selector": "@a[tag = hit_detect.taker]"}]
# tag @a[tag = hit_detect.giver] remove tagger
tag @a[tag = hit_detect.taker] add dead
tag @a[tag = hit_detect.taker] add special


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "gold"}, {"translate": "chat.hit.murder"}, {"selector": "@a[tag = hit_detect.taker]", "color": "dark_gray"}]

title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 40 100

# title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, {"translate": "title.hit.murder_other", "color":"gold"}]
# title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.murder_you_1", "color":"dark_green"}, {"translate": "subtitle.hit.you", "color":"green", "bold": true}, {"translate": "subtitle.hit.murder_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.murder_you", "color":"red", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.murder_other_1", "color":"dark_aqua"}, {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.murder_other_2", "color":"dark_aqua"}]

# execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s