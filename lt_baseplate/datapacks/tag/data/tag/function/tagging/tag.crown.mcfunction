tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " took the crown of ", {"selector": "@a[tag = hit_detect.taker]"}]
tag @a[tag = hit_detect.giver] add tagger
tag @a[tag = hit_detect.taker] remove tagger


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "aqua"}, " ", {"translate": "chat.hit.crown"}, " ", {"selector": "@a[tag = hit_detect.taker]", "color": "gold"}]

title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 20 3

title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, " ", {"translate": "title.hit.crown_other", "color":"gold"}]
title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.crown_you_1", "color":"dark_green"}, " ", {"translate": "subtitle.hit.you", "color":"green", "bold": true}, " ", {"translate": "subtitle.hit.crown_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.crown_you", "color":"red", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.crown_other_1", "color":"dark_aqua"}, " ", {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}, " ", {"translate": "title.hit.crown_other_2", "color":"dark_aqua"}]

execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:block.respawn_anchor.deplete master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s