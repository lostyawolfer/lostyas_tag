scoreboard players set @s pa.active 0

execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players add @a[tag=!tagger, limit=1, sort=nearest] effect.glowing 10
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.ability_specific.counter 0
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 10 run scoreboard players set @s pa.active 1

execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. at @a[tag=tagger] run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 50
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.ability_specific.counter 0
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 10 run scoreboard players set @s pa.active 1