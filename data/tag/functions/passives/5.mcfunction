execute as @s[tag=!safezoned, gamemode=adventure] run scoreboard players add @s ab.p.counter 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.p.counter=4..}] unless score @s ab.cd_ms matches ..5 run scoreboard players remove @s ab.cd_ms 1
execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.p.counter=4..}] unless score @s ab.cd_ms matches ..5 run scoreboard players set @s ab.p.counter 1

execute as @s[tag=!safezoned, gamemode=adventure, scores={ab.cd_s=1..}] run scoreboard players set @s ab.p.active 1
execute unless entity @s[tag=!safezoned, gamemode=adventure, scores={ab.cd_s=1..}] run scoreboard players set @s ab.p.active 0