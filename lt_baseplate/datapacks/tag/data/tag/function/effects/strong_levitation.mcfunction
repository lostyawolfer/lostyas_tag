effect give @s levitation infinite 20 true

execute if score @s effect.strong_levitation matches ..0 run effect clear @s levitation
execute if score @s effect.strong_levitation matches ..0 run scoreboard players reset @s effect.strong_levitation

execute if score @s effect.strong_levitation matches 0.. run scoreboard players remove @s effect.strong_levitation 1

particle firework ~ ~ ~ .3 0 .3 0 5