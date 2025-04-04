execute if entity @a[tag = hit_detect.giver] run tellraw @a[scores = {logging = 1..4}] ["! critical: ", {"selector": "@s"}, " hit someone, but ", {"selector": "@a[tag = hit_detect.giver]"}, " was hitting someone else on the same tick, could not process hit"]
execute if entity @a[tag = hit_detect.giver] run return 1
tag @s add hit_detect.giver

execute if entity @a[tag = hit_detect.taker] run tellraw @a[scores = {logging = 1..4}] ["! critical: ", {"selector": "@s"}, " hit someone, but ", {"selector": "@a[tag = hit_detect.giver]"}, " was hitting someone else on the same tick, could not process hit"]
execute if entity @a[tag = hit_detect.taker] run return 2
tag @a[scores = {hit_detect.taker=1..}] add hit_detect.taker

execute as @a[tag = hit_detect.giver, tag = hit_detect.taker] run tellraw @a[scores = {logging = 1..3}] ["! error: ", {"selector": "@s"}, " hit someone, but both players are the same"]
execute as @a[tag = hit_detect.giver, tag = hit_detect.taker] run tag @s remove hit_detect.taker

execute store result score hit_takers_temp server if entity @a[tag = hit_detect.taker]
execute if score hit_takers_temp server matches 2.. as @a[tag = hit_detect.giver] run tellraw @a[scores = {logging = 1..3}] ["! error: \"", {"selector": "@a[tag = hit_detect.taker]"}, "\" is more than 1 hit taker"]
execute if score hit_takers_temp server matches 2.. as @a[tag = hit_detect.giver] run tag @a[tag = hit_detect.taker] add hit_detect.taker.temp
execute if score hit_takers_temp server matches 2.. as @a[tag = hit_detect.giver] run tag @a[tag = hit_detect.taker] remove hit_detect.taker
execute if score hit_takers_temp server matches 2.. as @a[tag = hit_detect.giver] run tag @a[tag = hit_detect.taker.temp, limit = 1, sort = nearest] add hit_detect.taker
execute if score hit_takers_temp server matches 2.. as @a[tag = hit_detect.giver] run tag @a[tag = hit_detect.taker.temp] remove hit_detect.taker.temp

scoreboard players set @a[tag = hit_detect.giver] hit_detect.giver 0
scoreboard players set @a[tag = hit_detect.taker] hit_detect.taker 0

execute unless entity @a[tag = hit_detect.taker] run tellraw @a[scores = {logging = 1..4}] ["! critical: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit someone, but no damage taker found"]
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.giver
execute unless entity @a[tag = hit_detect.taker] run tag @a remove hit_detect.taker
execute unless entity @a[tag = hit_detect.taker] run return 404





tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " hit ", {"selector": "@a[tag = hit_detect.taker]"}]




execute if entity @a[tag = hit_detect.giver, tag =!safezone, tag =!tagger] if entity @a[tag = hit_detect.taker, tag =!safezone, tag = tagger] unless score game server matches 4 run scoreboard players set @a[tag = hit_detect.giver] points.reason.trigger 6
execute if entity @a[tag = hit_detect.taker, tag =!safezone, tag =!tagger] if entity @a[tag = hit_detect.giver, tag =!safezone, tag = tagger] if score game server matches 4 run scoreboard players set @a[tag = hit_detect.giver] points.reason.trigger 6

execute if score game server matches 0 if entity @a[tag = hit_detect.giver,               tag =!safezone] if entity @a[tag = hit_detect.taker,               tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/default_start
execute if score game server matches 0 if entity @a[tag = hit_detect.giver,               tag =!safezone] if entity @a[tag = hit_detect.taker,               tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 1 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/default
execute if score game server matches 1 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 2 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/infection
execute if score game server matches 2 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 3 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/murder
execute if score game server matches 3 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 4 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = tagger, tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/crown
execute if score game server matches 4 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = tagger, tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 5 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!special, tag =!safezone] run function tag:tagging/tag_give/freeze
execute if score game server matches 5 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!special, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 5 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!special, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = special, tag =!safezone] run function tag:tagging/tag_give/unfreeze
execute if score game server matches 6 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!special, tag =!safezone] run function tag:tagging/tag_give/infection_frozen
execute if score game server matches 6 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!special, tag =!safezone] run function tag:tagging/tag_give/absorbed
execute if score game server matches 6 if entity @a[tag = hit_detect.giver, tag =!tagger, tag =!special, tag =!safezone] if entity @a[tag = hit_detect.taker, tag = special, tag =!safezone] run function tag:tagging/tag_give/unfreeze
execute if score game server matches 7 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag =!invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/hot_potato
execute if score game server matches 7 if entity @a[tag = hit_detect.giver, tag = tagger, tag =!safezone] if entity @a[tag = hit_detect.taker, tag =!tagger, tag = invincible_one_time, tag =!safezone] run function tag:tagging/tag_give/absorbed


execute unless score e.glowing server matches 0.. run scoreboard players remove e.glowing server 2

tag @a[tag = hit_detect.giver] remove hit_detect.giver
tag @a[tag = hit_detect.taker] remove hit_detect.taker
return 0