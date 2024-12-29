playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5

playsound tag:downed master @s
stopsound @s

function tag:tp_back/get_id

scoreboard players add @s player_list 0