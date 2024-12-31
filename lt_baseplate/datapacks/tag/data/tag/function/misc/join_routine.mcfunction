playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
function tag:tp_back/get_id
attribute @s block_interaction_range base set 7
attribute @s fall_damage_multiplier base set 0

scoreboard players set @s[tag =!dead] anim.death -14

scoreboard players add @s player_list 0