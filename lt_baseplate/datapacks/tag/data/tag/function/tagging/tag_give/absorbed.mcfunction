tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " tried to hit ", {"selector": "@a[tag = hit_detect.taker]"}, " but he absorbed the damage"]
scoreboard players set @a[tag = hit_detect.giver] stat.tagger_time -1
tag @a[tag = hit_detect.taker] remove invincible_one_time
scoreboard players set @a[tag = hit_detect.taker] stat.tagger_time 0


title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 20 3

title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, {"translate": "title.hit.default_other", "color":"gold"}]
title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.default_you_1", "color":"dark_green"}, {"translate": "subtitle.hit.default_you", "color":"green", "bold": true}, {"translate": "subtitle.hit.default_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.default_you", "color":"red", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.default_other_1", "color":"dark_aqua"}, {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.default_other_2", "color":"dark_aqua"}]