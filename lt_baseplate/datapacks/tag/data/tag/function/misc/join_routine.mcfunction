playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
execute store result score @s tp.id run function tag:tp_back/get_id {scoreboard: tp.id}
attribute @s block_interaction_range base set 7
attribute @s fall_damage_multiplier base set 0
clear @s

execute unless score @s game_count < $server game_count unless score @s anim.death matches 0.. unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. run scoreboard players set @s[tag=!special] anim.death -14
execute if score @s game_count < $server game_count run scoreboard players set @s ab.cd 1
execute if score @s game_count < $server game_count run scoreboard players set @s p.cd 1
execute if score @s game_count < $server game_count run scoreboard players reset @s effect.downed 
execute if score @s game_count < $server game_count run tag @s remove tagger
execute if score @s game_count < $server game_count run tag @s remove special
execute if score @s game_count < $server game_count run tag @s remove dead
execute if score @s game_count < $server game_count unless score game server matches -2..0 at @s run function tag:points_xp/get_xp_from_points
execute if score game server matches -2..0 if score @s points matches 1.. at @s run function tag:points_xp/get_xp_from_points
execute if score @s game_count < $server game_count run scoreboard players set @s[tag=!special] anim.death -14
#execute if score @s game_count > $server game_count run 
attribute @s minecraft:jump_strength base set 0.42

scoreboard players add @s points.best 0
scoreboard players add @s stat.get_tagged 0

scoreboard players add @s player_list 0