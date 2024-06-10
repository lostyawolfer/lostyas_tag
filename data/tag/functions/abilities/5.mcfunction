##     Glowing
#     Glows everyone except you


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 5 ab.times.cd
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.use_s run scoreboard players get 5 ab.times.use
execute as @s[scores={ab.use=1..}] run tag @s add ab.active.5
execute as @s[scores={ab.use=1..}] run title @a title {"text":"Подсветка","color":"aqua"}
execute as @s[scores={ab.use=1..}] run title @a subtitle {"text":"вызвана абилкой","color":"aqua"}
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Work
execute as @s[scores={ab.use_s=1..}] run scoreboard players set @a[tag=!ab.active.5] effect.glow 2



#  End
execute as @s[scores={ab.use_s=0}] run tag @s remove ab.active.5
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1