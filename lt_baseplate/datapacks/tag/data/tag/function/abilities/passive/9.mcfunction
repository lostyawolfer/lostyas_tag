execute as @s[tag=!safezone, gamemode=adventure] unless score @s stat.speed matches 0 run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure] if score @s effect.downed matches 1.. run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure] unless score @s effect.downed matches 1.. if score @s stat.speed matches 0 run scoreboard players add @s pa.ability_specific.counter 1

execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=100..}] unless score @s effect.invisibility matches 1.. run scoreboard players set @s effect.invisibility 2
execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=300..}] run scoreboard players set @s pa.ability_specific.counter 100

execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=100}] run particle dust{color:6373383, scale:1} ~ ~1 ~ .2 .3 .2 1 5

execute as @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=100..}] run scoreboard players set @s pa.active 1
execute unless entity @s[tag=!safezone, gamemode=adventure, scores={pa.ability_specific.counter=100..}] run scoreboard players set @s pa.active 0