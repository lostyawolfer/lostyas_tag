# adrenaline
execute if score @s pa.ability_specific.jump matches 1.. if score @s jump.bhop matches 2..20 run scoreboard players add @s jump.bhop 10
execute if score @s pa.ability_specific.jump matches 1.. if score @s jump.bhop matches 2..20 run scoreboard players set @s pa.ability_specific.jump 0

execute if score @s jump.bhop matches 21.. run scoreboard players set @s pa.active 1
execute unless score @s jump.bhop matches 21.. run scoreboard players set @s pa.active 0