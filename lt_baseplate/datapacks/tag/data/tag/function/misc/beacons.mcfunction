# execute if score @s effect.downed matches 1.. run return 0
# execute if score @s effect.freeze matches 1.. run return 0

execute unless score @s effect.strong_levitation matches ..8 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " used a beacon"]
# execute if score @s effect.strong_levitation matches ..8 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " had an error using a beacon, applying effect again"]

execute unless score @s effect.invisibility matches 1.. unless score @s effect.strong_levitation matches ..8 run playsound entity.firework_rocket.blast_far player @a ~ ~.1 ~
execute unless score @s effect.invisibility matches 1.. unless score @s effect.strong_levitation matches ..8 run playsound entity.firework_rocket.launch player @a ~ ~.1 ~

execute unless score @s effect.invisibility matches 1.. unless score @s effect.strong_levitation matches ..8 run particle flash ~ ~ ~ 0 0 0 0 1


execute unless score e.glowing server matches 0.. unless score @s effect.strong_levitation matches 1.. run scoreboard players remove e.glowing server 2

# tp @s ~ ~0.5 ~
scoreboard players set @s effect.strong_levitation 8