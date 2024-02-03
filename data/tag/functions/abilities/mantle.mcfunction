##     Holy mantle
#     Makes you temporarily invincible for 1 hit


#  Activation
execute as @a[tag=ab.active.mantle,scores={ab.use=1..}] at @s run execute store result score @s ab.cd_s run scoreboard players get mantle ab.times.cd
execute as @a[tag=ab.active.mantle,scores={ab.use=1..}] at @s run execute store result score @s ab.use_s run scoreboard players get mantle ab.times.use
execute as @a[tag=ab.active.mantle,scores={ab.use=1..}] at @s run scoreboard players set @s ab.use 0


#  Work
execute as @a[tag=ab.active.mantle,scores={ab.use_s=1..}] at @s run tag @s add invincible.one_time


#  Visual effects
# (none)
# if you wonder why ability still has visual effects check bg_processes/tag.give_tag.mcfunction


#  End
execute as @a[tag=ab.active.mantle,scores={ab.use_s=0}] at @s run tag @s remove invincible.one_time
execute as @a[tag=ab.active.mantle,scores={ab.use_s=0}] at @s run scoreboard players set @s ab.use_s -1
execute as @a[tag=ab.active.mantle,scores={ab.cd_s=0}] at @s run scoreboard players set @s ab.cd_s -1