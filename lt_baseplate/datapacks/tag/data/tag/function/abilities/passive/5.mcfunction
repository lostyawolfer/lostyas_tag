execute as @s[tag=!safezoned, gamemode=adventure] run scoreboard players add @s pa.ability_specific.counter 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={pa.ability_specific.counter=5..}] run scoreboard players add @s[scores={ab.use=1..}] ab.use 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={pa.ability_specific.counter=5..}] run scoreboard players set @s[scores={ab.use=1..}] pa.ability_specific.counter 1

execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.use=1..}] run scoreboard players set @s pa.active 1
execute unless entity @s[tag=!safezoned, gamemode=adventure, scores={ab.use=1..}] run scoreboard players set @s pa.active 0