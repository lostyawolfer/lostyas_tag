execute if score @s effect.strong_levitation matches 1.. unless score @s pa.current_passive matches 8 run effect give @s levitation infinite 30 true
execute if score @s effect.strong_levitation matches 1.. if score @s pa.current_passive matches 8 run effect give @s levitation infinite 40 true

execute if score @s effect.strong_levitation matches ..0 run effect clear @s levitation
execute if score @s effect.strong_levitation matches ..0 run scoreboard players reset @s effect.strong_levitation

execute if score @s effect.strong_levitation matches 0.. run scoreboard players remove @s effect.strong_levitation 1

execute unless score @s effect.invisibility matches 1.. run particle firework ~ ~ ~ .3 0 .3 0 5