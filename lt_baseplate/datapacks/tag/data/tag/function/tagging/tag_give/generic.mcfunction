tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " got tagged by game or admin interaction"]
scoreboard players set @s[tag = safezone] stat.tagger_time 0
damage @s .1
tag @s add tagger


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "light_purple"}, {"selector": "@s", "color": "gold"}, {"translate": "chat.hit.generic"}]

title @s times 0 20 3

title @s title [{"translate": "title.hit.generic_you", "color":"red", "bold": true}]
title @s subtitle [{"translate": "subtitle.hit.generic_you", "color":"dark_purple"}, {"translate": "subtitle.hit.generic_you2", "color":"light_purple", "bold": true}]

title @a[distance = .1..] title [{"selector": "@s", "color": "#FFFF00", "bold": true}, {"translate": "title.hit.generic_other", "color":"gold"}]
title @a[distance = .1..] subtitle [{"translate": "subtitle.hit.generic_other", "color":"dark_purple"}, {"translate": "subtitle.hit.generic_other2", "color":"light_purple", "bold": true}]

execute as @s at @s run playsound minecraft:entity.elder_guardian.curse master @s
damage @s .1