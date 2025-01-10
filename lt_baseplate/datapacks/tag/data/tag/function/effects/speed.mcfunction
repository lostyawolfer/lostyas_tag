effect give @s speed infinite 20 true

execute if score @s effect.speed matches ..0 run effect clear @s speed
execute if score @s effect.speed matches ..0 run scoreboard players reset @s effect.speed

execute if score @s effect.speed matches 0.. run scoreboard players remove @s effect.speed 1