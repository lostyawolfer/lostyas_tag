execute as @s[tag=!safezoned, gamemode=adventure] run scoreboard players add @s ab.p.counter 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.p.counter=6..}] run scoreboard players add @s[scores={ab.use_s=1..}] ab.use_ms 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.p.counter=6..}] run scoreboard players set @s[scores={ab.use_s=1..}] ab.p.counter 1

execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.use_s=1..}] run scoreboard players set @s ab.p.active 1
execute unless entity @s[tag=!safezoned, gamemode=adventure, scores={ab.use_s=1..}] run scoreboard players set @s ab.p.active 0