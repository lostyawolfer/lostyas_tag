##     Holy mantle
#     Makes you temporarily invincible for 1 hit


#  Activation
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 3 ab.times.cd
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.use_s run scoreboard players get 3 ab.times.use
execute as @s[scores={ab.use=1..}] run playsound block.amethyst_cluster.fall player @a
execute as @s[scores={ab.use=1..}] run particle block ice ~ ~1 ~ .3 .5 .3 0 20
execute as @s[scores={ab.use=1..}] run tag @s add invincible.one_time
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0


#  Visual effects
# (none)
# if you wonder why ability still has visual effects check bg_processes/tick.misc.mcfunction


#  End
execute as @s[scores={ab.use_s=0}] run tag @s remove invincible.one_time
execute as @s[scores={ab.use_s=0}] run playsound block.amethyst_cluster.break player @a
execute as @s[scores={ab.use_s=0}] run playsound block.respawn_anchor.deplete player @a
execute as @s[scores={ab.use_s=0}] run particle block ice ~ ~1 ~ .3 .5 .3 0 20
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1