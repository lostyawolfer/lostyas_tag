tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " took the crown of ", {"selector": "@a[tag = hit_detect.taker]"}]
tag @a[tag = hit_detect.giver] add tagger
scoreboard players set @a[tag = hit_detect.giver] stat.tagger_time 0
tag @a[tag = hit_detect.taker] remove tagger
scoreboard players set @a[tag = hit_detect.taker] stat.tagger_time 1


scoreboard players set @a[tag = hit_detect.giver] points.reason.trigger -7


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "yellow"}, {"translate": "chat.hit.crown"}, {"selector": "@a[tag = hit_detect.taker]", "color": "aqua"}]

title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 20 3

title @a[tag = hit_detect.giver] title [{"translate": "title.hit.crown_you", "color":"#FFFF00", "bold": true}]
title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.crown_you", "color":"green", "bold": true}, {"translate": "subtitle.hit.crown_you_1", "color":"dark_green", "bold": false}, {"selector": "@a[tag = hit_detect.taker]", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.crown_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"selector": "@a[tag = hit_detect.giver]", "color": "red", "bold": true}, {"translate": "title.hit.crown_other", "bold": false, "color": "dark_red"}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.crown_other_1", "color":"dark_aqua"}]

execute as @a[tag = hit_detect.taker] at @s run scoreboard players add @s stat.get_tagged 1
execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:block.respawn_anchor.deplete master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s





