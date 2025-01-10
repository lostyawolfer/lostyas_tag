##     2.6 cycle
#     Pearl is recovering much faster


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 6 ab.times.cd
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.use_s run scoreboard players get 6 ab.times.use
execute as @s[scores={ab.use=1..}] run playsound entity.enderman.teleport player @a ~ ~ ~ .5 0
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Work
execute as @s[scores={ab.use_s=1..}] run scoreboard players remove @s[scores={p_cd_ms=1..}] p_cd_ms 5

#  Visual effects
execute as @s[scores={ab.use_s=1..}] unless score @s effect.invis matches 1.. run particle item ender_pearl ~ ~0.7 ~ .2 .2 .2 .1 20

#  End
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1