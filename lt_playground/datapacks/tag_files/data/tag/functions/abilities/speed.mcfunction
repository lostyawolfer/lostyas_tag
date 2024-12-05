##     Superspeed
#     Makes you run fast


#  Activation
execute as @a[tag=ab.active.speed,scores={ab.use=1..}] at @s run execute store result score @s ab.cd_s run scoreboard players get speed ab.times.cd
execute as @a[tag=ab.active.speed,scores={ab.use=1..}] at @s run execute store result score @s ab.use_s run scoreboard players get speed ab.times.use
execute as @a[tag=ab.active.speed,scores={ab.use=1..}] at @s run scoreboard players set @s ab.use 0


#  Work
execute as @a[tag=ab.active.speed,scores={ab.use_s=1..}] at @s run scoreboard players set @s effect.speed 2


#  Visual effects
execute as @a[tag=ab.active.speed,scores={ab.use_s=1..}] at @s run particle dust 1 1 1 1 ~ ~1 ~ .3 .5 .3 0 20


#  End
execute as @a[tag=ab.active.speed,scores={ab.use_s=0}] at @s run scoreboard players set @s ab.use_s -1
execute as @a[tag=ab.active.speed,scores={ab.cd_s=0}] at @s run scoreboard players set @s ab.cd_s -1