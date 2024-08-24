##     Superspeed
#     Makes you run fast


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 2 ab.times.cd
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.use_s run scoreboard players get 2 ab.times.use
execute as @s[scores={ab.use=1..}] run playsound minecraft:entity.warden.sonic_boom player @a
execute as @s[scores={ab.use=1..}] run particle minecraft:sonic_boom ~ ~1 ~ 0 .5 0 0 3
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Work
execute as @s[scores={ab.use_s=1..}] run scoreboard players set @s effect.speed 2


#  Visual effects
execute as @s[scores={ab.use_s=1..}] run particle dust 0 1 1 1 ~ ~1 ~ .3 .5 .3 0 20


#  End
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1