tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " used a beacon"]

# tp @s ~ ~0.5 ~
scoreboard players set @s effect.strong_levitation 11

execute unless score @s effect.invisibility matches 1.. run playsound entity.firework_rocket.blast_far player @a ~ ~.1 ~
execute unless score @s effect.invisibility matches 1.. run playsound entity.firework_rocket.launch player @a ~ ~.1 ~

execute unless score @s effect.invisibility matches 1.. run particle flash ~ ~ ~ 0 0 0 0 1