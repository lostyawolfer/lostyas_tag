scoreboard players set @s pa.active 0

execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run effect give @s speed 1 3 true
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players set @s pa.active 1

execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if entity @a[tag=tagger, distance=..20] run effect give @s speed 1 3 true
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if entity @a[tag=tagger, distance=..20] run scoreboard players set @s pa.active 1