# invis
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 720
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 100
execute as @s[scores={ab.use.trigger=1..}] unless score @s effect.invisibility matches 1.. run particle cloud ~ ~1 ~ .3 .5 .3 .1 50
execute as @s[scores={ab.use.trigger=1..}] run playsound minecraft:ambient.underwater.enter player @s
execute as @s[scores={ab.use.trigger=1..}] run playsound minecraft:ambient.underwater.loop player @s ~ ~ ~ 2
execute as @s[scores={ab.use.trigger=1..}] run playsound minecraft:block.composter.ready player @a ~ ~ ~ 1 0.7
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=1..}] run scoreboard players set @s effect.invisibility 2
execute as @s[scores={ab.use=1..}] run scoreboard players reset @s effect.glowing

execute as @s[scores={ab.use=-1}] unless score @s effect.invisibility matches 1.. run particle cloud ~ ~1 ~ .3 .5 .3 .1 50
execute as @s[scores={ab.use=-1}] run playsound minecraft:ambient.underwater.exit player @s
execute as @s[scores={ab.use=-1}] run stopsound @s player minecraft:ambient.underwater.loop
execute as @s[scores={ab.use=-1}] run playsound minecraft:block.composter.ready player @a ~ ~ ~ 1 0
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2