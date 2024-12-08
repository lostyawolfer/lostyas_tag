effect give @s slowness infinite 6 true
effect give @s slow_falling infinite 0 true
tp @s @s
tp @s ~ ~ ~

execute if score @s effect.freeze matches ..0 run effect clear @s slowness
execute if score @s effect.freeze matches ..0 run effect clear @s slow_falling
execute if score @s effect.freeze matches ..0 run scoreboard players reset @s effect.freeze

execute if score @s effect.freeze matches 0.. run scoreboard players remove @s effect.freeze 1