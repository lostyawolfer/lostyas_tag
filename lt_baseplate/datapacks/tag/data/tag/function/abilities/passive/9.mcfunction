scoreboard players set @s pa.active 0
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=..20}] run scoreboard players set @s pa.active -5
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=20..}] run scoreboard players set @s pa.active -4
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=40..}] run scoreboard players set @s pa.active -3
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=60..}] run scoreboard players set @s pa.active -2
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=80..}] run scoreboard players set @s pa.active -1


execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger] unless score @s stat.speed matches 0 run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s effect.downed matches 1.. run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger] unless score @s effect.downed matches 1.. if score @s stat.speed matches 0 run scoreboard players add @s pa.ability_specific.counter 1

execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=100}] run particle entity_effect{color:[0, 1, 1, 100]} ~ ~1 ~ .2 .4 .2 1 4

#execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=150}] run particle entity_effect{color:[0, 1, 1, 150]} ~ ~1 ~ .2 .4 .2 1 1
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=200}] run particle entity_effect{color:[0, 1, 1, 150]} ~ ~1 ~ .2 .4 .2 1 1
#execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=250}] run particle entity_effect{color:[0, 1, 1, 150]} ~ ~1 ~ .2 .4 .2 1 1
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=300}] run particle entity_effect{color:[0, 1, 1, 150]} ~ ~1 ~ .2 .4 .2 1 1

execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=100..}] unless score @s effect.invisibility matches 1.. run scoreboard players set @s effect.invisibility 2
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=300..}] run scoreboard players set @s pa.ability_specific.counter 101

execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, scores={pa.ability_specific.counter=100..}] run scoreboard players set @s pa.active 1




execute as @s[tag=!safezone, gamemode=adventure, tag=tagger] unless score @s stat.speed matches 0 run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s effect.downed matches 1.. run scoreboard players set @s pa.ability_specific.counter 0
execute as @s[tag=!safezone, gamemode=adventure, tag=tagger] unless score @s effect.downed matches 1.. if score @s stat.speed matches 0 run scoreboard players add @s pa.ability_specific.counter 1

execute as @s[tag=!safezone, gamemode=adventure, tag=tagger, scores={pa.ability_specific.counter=7..}] run scoreboard players remove e.glowing server 1
execute as @s[tag=!safezone, gamemode=adventure, tag=tagger] run scoreboard players set @s pa.active 1
execute as @s[tag=!safezone, gamemode=adventure, tag=tagger, scores={pa.ability_specific.counter=7..}] run scoreboard players set @s pa.ability_specific.counter 0