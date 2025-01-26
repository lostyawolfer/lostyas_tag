# glowing
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 900
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 100
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set e.glowing server 1
execute as @s[scores={ab.use.trigger=1..}] run tag @s add ab.active.5
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=-1}] run tag @s remove ab.active.5
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2