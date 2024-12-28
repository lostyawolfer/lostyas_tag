execute if score @s effect.strong_levitation matches 11.. run effect give @s levitation infinite 200 true

execute if score @s effect.strong_levitation matches ..10 run effect clear @s levitation
execute if score @s effect.strong_levitation matches ..0 run scoreboard players reset @s effect.strong_levitation

execute if score @s effect.strong_levitation matches 0.. run scoreboard players remove @s effect.strong_levitation 1

# execute unless score @s effect.invisibility matches 1.. run particle firework ~ ~ ~ .3 0 .3 0 5