effect give @s invisibility infinite 0 true

execute if score @s effect.invisibility matches ..0 run effect clear @s invisibility
execute if score @s effect.invisibility matches ..0 run scoreboard players reset @s effect.invisibility

execute if score @s effect.invisibility matches 0.. run scoreboard players remove @s effect.invisibility 1