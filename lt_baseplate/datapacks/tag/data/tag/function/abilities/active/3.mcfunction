# holy mantle
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 700
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 200
execute as @s[scores={ab.use.trigger=1..}] run playsound block.amethyst_cluster.fall player @a
execute as @s[scores={ab.use.trigger=1..}] run particle block{block_state:ice} ~ ~1 ~ .3 .5 .3 0 20
execute as @s[scores={ab.use.trigger=1..}] run tag @s add invincible_one_time
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute unless score @s effect.invisibility matches 1.. if score @s ab.use matches 1.. run particle dust{color:891581, scale:1} ~ ~1 ~ .3 .5 .3 0 10
execute unless entity @s[tag=invincible_one_time] if score @s ab.use matches 1.. run scoreboard players set @s ab.use -1

execute as @s[scores={ab.use=-1}] run tag @s remove invincible_one_time
execute as @s[scores={ab.use=-1}] run playsound block.amethyst_cluster.break player @a
execute as @s[scores={ab.use=-1}] run playsound block.respawn_anchor.deplete player @a
execute as @s[scores={ab.use=-1}] run particle block{block_state:ice} ~ ~1 ~ .3 .5 .3 0 20
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2