effect give @s glowing infinite 0 true

execute if score @s effect.glowing matches ..0 run effect clear @s glowing
execute if score @s effect.glowing matches ..0 run scoreboard players reset @s effect.glowing

execute if score @s effect.glowing matches 0.. run scoreboard players remove @s effect.glowing 1