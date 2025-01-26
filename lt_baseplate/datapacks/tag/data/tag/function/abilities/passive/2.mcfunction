scoreboard players set @s pa.active 0

execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players add @a[tag=!tagger, tag=!dead, limit=1, sort=nearest] effect.glowing 10
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.ability_specific.counter 0

execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. at @a[tag=tagger, scores={effect.invisibility=1..}] run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 50 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.ability_specific.counter 0