tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " got tagged by game via being frozen"]
scoreboard players set @s[tag = safezone] stat.tagger_time 0
damage @s .1
tag @s add tagger
scoreboard players set @s stat.tagger_time 0


tellraw @a [{"text": "", "color": "aqua"}, {"text": "🔥 ", "color": "red"}, {"selector": "@s", "color": "gold"}, {"translate": "chat.hit.infection_freeze"}]

title @s times 0 20 3

title @s title [{"translate": "title.hit.infection_freeze_you", "color":"red", "bold": true}]
title @s subtitle [{"translate": "subtitle.hit.infection_freeze_you_1", "color":"dark_aqua"}, {"translate": "subtitle.hit.infection_freeze_you", "color":"aqua", "bold": true}, {"translate": "subtitle.hit.infection_freeze_you_2", "color":"dark_aqua", "bold": false}]

execute as @s at @s run playsound minecraft:entity.elder_guardian.curse master @s
damage @s .1