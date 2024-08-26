execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run effect give @s speed 1 2 true
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run scoreboard players set @s ab.p.active 1
execute unless entity @s[tag=tagger, gamemode=adventure, tag=!safezoned] run scoreboard players set @s ab.p.active 0