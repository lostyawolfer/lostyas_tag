playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
execute store result score @s tp.id run function tag:tp_back/get_id {scoreboard: tp.id}
attribute @s block_interaction_range base set 7
attribute @s fall_damage_multiplier base set 0

execute unless score @s anim.death matches 0.. unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. run scoreboard players set @s[tag=!special] anim.death -14
attribute @s minecraft:jump_strength base set 0.42

scoreboard players add @s player_list 0