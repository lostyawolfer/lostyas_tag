##     Invisibility
#     Makes you run fast


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 4 ab.times.cd
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.use_s run scoreboard players get 4 ab.times.use
execute as @s[scores={ab.use=1..}] run particle cloud ~ ~1 ~ .3 .5 .3 .1 50
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Work
execute as @s[scores={ab.use_s=1..}] run scoreboard players set @s effect.invis 2



#  End
execute as @s[scores={ab.use_s=0}] run particle cloud ~ ~1 ~ .3 .5 .3 .1 50
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1