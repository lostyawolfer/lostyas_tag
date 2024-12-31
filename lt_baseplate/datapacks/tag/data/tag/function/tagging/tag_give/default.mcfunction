tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " tagged ", {"selector": "@a[tag = hit_detect.taker]"}]
tag @a[tag = hit_detect.giver] remove tagger
scoreboard players set @a[tag = hit_detect.giver] stat.tagger_time -1
tag @a[tag = hit_detect.taker] add tagger
scoreboard players set @a[tag = hit_detect.taker] stat.tagger_time 0


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "aqua"}, {"translate": "chat.hit.default"}, {"selector": "@a[tag = hit_detect.taker]", "color": "gold"}]

title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 20 3

title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, {"translate": "title.hit.default_other", "color":"gold"}]
title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.default_you_1", "color":"dark_green"}, {"translate": "subtitle.hit.default_you", "color":"green", "bold": true}, {"translate": "subtitle.hit.default_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.default_you", "color":"red", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.default_other_1", "color":"dark_aqua"}, {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.default_other_2", "color":"dark_aqua"}]

execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s