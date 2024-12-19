execute if entity @a[tag = hit_detect.giver] run tellraw @a[scores = {logging = 1..2}] ["! warn: ", {"selector": "@s"}, " hit someone, but ", {"selector": "@a[tag = hit_detect.giver]"}, " was hitting someone else on the same tick, could not process hit"]
execute if entity @a[tag = hit_detect.giver] run return 1
tag @s add hit_detect.giver

execute if entity @a[tag = hit_detect.taker] run tellraw @a[scores = {logging = 1..2}] ["! warn: ", {"selector": "@s"}, " hit someone, but ", {"selector": "@a[tag = hit_detect.giver]"}, " was hitting someone else on the same tick, could not process hit"]
execute if entity @a[tag = hit_detect.taker] run return 2
tag @a[scores = {hit_detect.taker=1..}] add hit_detect.taker

scoreboard players set @a[tag = hit_detect.giver] hit_detect.giver 0
scoreboard players set @a[tag = hit_detect.taker] hit_detect.taker 0

execute unless entity @a[tag = hit_detect.taker] run tellraw @a[scores = {logging = 1..3}] ["! error: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit someone, but no hit player found"]
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.giver
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.taker
execute unless entity @a[tag = hit_detect.taker] run return 404




tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit ", {"selector": "@a[tag = hit_detect.taker]"}]
execute if score game server matches 1 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!safezone] run function tag:tagging/tag.default
execute if score game server matches 2 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!safezone] run function tag:tagging/tag.infection
execute if score game server matches 3 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!safezone] run function tag:tagging/tag.murder
execute if score game server matches 4 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = tagger, tag =!safezone] run function tag:tagging/tag.crown
execute if score game server matches 5 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!special, tag =!safezone] run function tag:tagging/tag.freeze
execute if score game server matches 5 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!special, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = special, tag =!safezone] run function tag:tagging/tag.unfreeze


tag @a[tag = hit_detect.giver] remove hit_detect.giver
tag @a[tag = hit_detect.taker] remove hit_detect.taker
return 0