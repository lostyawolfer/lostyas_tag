scoreboard players set @s pa.active 0

execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. as @a[tag=!tagger, tag=!dead, limit=1, sort=nearest] unless score @s effect.invisibility matches 1.. run scoreboard players add @s effect.glowing 10
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. as @a[tag=!tagger, tag=!dead, limit=1, sort=nearest] unless score @s effect.invisibility matches 1.. at @s run particle dust{color:821149, scale:1} ~ ~1 ~ .2 .3 .2 1 20 force @a
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. run scoreboard players set @s pa.ability_specific.counter 0

execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. at @a[tag=tagger, scores={effect.invisibility=1..}] run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 50 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.ability_specific.counter 0