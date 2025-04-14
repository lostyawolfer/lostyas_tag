execute as @s[tag=!safezone, gamemode=adventure] run scoreboard players add @s pa.ability_specific.counter 1
execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=4..}] unless score @s ab.current matches 8 run scoreboard players add @s[scores={ab.use=1..}] ab.use 1
execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=4..}] if score @s ab.current matches 8 run scoreboard players add @s[scores={ab.use2=1..}] ab.use2 1
execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=4..}] run scoreboard players set @s[scores={ab.use=1..}] pa.ability_specific.counter 1

execute as @s[tag=!safezone, gamemode=adventure, scores={ab.use=1..}] unless score @s ab.current matches 8 run scoreboard players set @s pa.active 1
execute unless entity @s[tag=!safezone, gamemode=adventure, scores={ab.use=1..}] unless score @s ab.current matches 8 run scoreboard players set @s pa.active 0

execute as @s[tag=!safezone, gamemode=adventure, scores={ab.use2=1..}] if score @s ab.current matches 8 run scoreboard players set @s pa.active 1
execute unless entity @s[tag=!safezone, gamemode=adventure, scores={ab.use2=1..}] if score @s ab.current matches 8 run scoreboard players set @s pa.active 0