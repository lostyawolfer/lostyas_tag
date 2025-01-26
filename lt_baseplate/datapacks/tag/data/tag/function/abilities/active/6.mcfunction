# 2.6 cycle
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 700
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 200
execute as @s[scores={ab.use.trigger=1..}] run playsound entity.enderman.teleport player @a ~ ~ ~ .5 .5
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=1..}] run scoreboard players remove @s[scores={p.cd=4..}] p.cd 5
execute as @s[scores={ab.use=1..}] unless score @s effect.invisibility matches 1.. run particle item{item: "ender_pearl"} ~ ~0.7 ~ .2 .2 .2 .1 20

execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2