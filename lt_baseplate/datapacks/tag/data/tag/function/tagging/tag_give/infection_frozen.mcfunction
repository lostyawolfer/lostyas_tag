tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " froze ", {"selector": "@a[tag = hit_detect.taker]"}]
# tag @a[tag = hit_detect.giver] remove tagger
tag @a[tag = hit_detect.taker] add special
scoreboard players set @a[tag = hit_detect.taker] effect.downed 900


scoreboard players set @a[tag = hit_detect.giver] points.reason.trigger -9


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "gold"}, {"selector": "@a[tag = hit_detect.giver]", "color": "dark_green"}, {"translate": "chat.hit.freeze"}, {"selector": "@a[tag = hit_detect.taker]", "color": "dark_purple"}]

title @a[tag = hit_detect.giver] times 0 20 3
title @a[tag = hit_detect.taker] times 0 27 3

# title @a[tag = hit_detect.giver] title [{"selector": "@a[tag = hit_detect.taker]", "color": "#FFFF00", "bold": true}, {"translate": "title.hit.freeze_other", "color":"gold"}]
# title @a[tag = hit_detect.giver] subtitle [{"translate": "subtitle.hit.freeze_you_1", "color":"dark_green"}, {"translate": "subtitle.hit.you", "color":"green", "bold": true}, {"translate": "subtitle.hit.freeze_you_2", "color":"dark_green"}]

title @a[tag = hit_detect.taker] title [{"translate": "title.hit.freeze_you", "color":"red", "bold": true}]
title @a[tag = hit_detect.taker] subtitle [{"translate": "subtitle.hit.freeze_other_1", "color":"dark_aqua"}, {"selector": "@a[tag = hit_detect.giver]", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.freeze_other_2", "color":"dark_aqua"}]

execute as @a[tag = hit_detect.taker] at @s run scoreboard players add @s stat.get_tagged 1
execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.snow_golem.death master @s
execute as @a[tag = hit_detect.taker] at @s run playsound minecraft:entity.player.hurt_freeze master @s
execute as @a[tag = hit_detect.giver] at @s run playsound minecraft:entity.player.levelup master @s