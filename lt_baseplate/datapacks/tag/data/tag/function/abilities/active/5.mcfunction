# glowing
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 900
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 99
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set e.glowing_ability server 99
execute as @s[scores={ab.use.trigger=1..}] run tag @s add ab.active.5
execute as @s[scores={ab.use.trigger=1..}] as @a at @s run playsound glowing master @s ~ ~ ~
execute as @s[scores={ab.use.trigger=1..}] as @a at @s run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 0
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=-1}] run tag @s remove ab.active.5
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use_s -2