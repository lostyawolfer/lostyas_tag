execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players remove e.glowing server 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players set @s pa.active 1
execute unless entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players set @s pa.active 0