##     Dark arts
#     You get spectator for half a second


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 7 ab.times.cd
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use_s 1
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use_ms 15
execute as @s[scores={ab.use=1..}] run particle dragon_breath ~ ~1 ~ .3 .5 .3 0 50
execute as @s[scores={ab.use=1..}] run tag @s add ab.active.7
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Work
execute as @s[scores={ab.use_s=1..}] run gamemode spectator @s
#execute as @s[scores={ab.use_s=1..}] run attribute @s generic.flying_speed base set

#  Visual effects
execute as @s[scores={ab.use_s=1..}] run particle dust_color_transition .5 0 .5 1 0 0 0 ~ ~1 ~ .3 .5 .3 .1 30

#  End
execute as @s[scores={ab.use_s=0}] run gamemode adventure @s
execute as @s[scores={ab.use_s=0}] run particle dragon_breath ~ ~1 ~ .3 .5 .3 0 50
execute as @s[scores={ab.use_s=0}] run tag @s remove ab.active.7
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s effect.down 3
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1