execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run scoreboard players add glow event 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run scoreboard players set @s ab.p.active 1
execute unless entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run scoreboard players set @s ab.p.active 0