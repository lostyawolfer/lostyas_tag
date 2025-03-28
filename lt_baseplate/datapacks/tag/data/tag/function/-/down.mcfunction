execute if score @s effect.downed matches 0.. run scoreboard players set @s effect.downed 0
execute unless score @s effect.downed matches 0.. run tag @s add special
execute unless score @s effect.downed matches 0.. run scoreboard players set @s effect.downed 900

execute if score @s effect.downed matches 0 run tag @s remove special
execute if score @s effect.downed matches 0 run scoreboard players set @s effect.downed -1