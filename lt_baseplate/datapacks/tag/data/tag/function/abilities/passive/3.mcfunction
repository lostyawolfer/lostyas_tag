execute as @s[tag=!safezoned, gamemode=adventure] run scoreboard players add @s pa.ability_specific.counter 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={pa.ability_specific.counter=4..}] unless score @s p.cd matches ..5 run scoreboard players remove @s p.cd 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={pa.ability_specific.counter=4..}] unless score @s p.cd matches ..5 run scoreboard players set @s pa.ability_specific.counter 1

execute as @s[tag=!safezoned, gamemode=adventure, scores={p.cd=1..}] run scoreboard players set @s pa.active 1
execute unless entity @s[tag=!safezoned, gamemode=adventure, scores={p.cd=1..}] run scoreboard players set @s pa.active 0