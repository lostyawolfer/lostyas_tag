execute if score @s effect.downed matches 0.. run scoreboard players set @s effect.downed 0
execute unless score @s effect.downed matches 0.. run scoreboard players set @s effect.downed 1199
execute if score @s effect.downed matches 0 run scoreboard players set @s effect.downed -1