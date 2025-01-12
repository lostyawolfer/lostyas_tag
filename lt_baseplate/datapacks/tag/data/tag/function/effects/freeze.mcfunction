tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called freeze funciton"]

effect give @s slowness infinite 6 true
effect give @s slow_falling infinite 0 true
#particle electric_spark ~ ~1 ~ .2 .55 .2 0 2
#tp @s @s
tp @s ~ ~ ~
# execute if score @s effect.freeze matches 1.. if score generic server matches 0 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 1 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 2 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 3 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 4 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 5 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 6 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 7 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 8 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 9 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 10 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 11 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 12 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 13 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 14 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 15 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 16 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 17 run scoreboard players set @s screen_effect 401
# execute if score @s effect.freeze matches 1.. if score generic server matches 18 run scoreboard players set @s screen_effect 400
# execute if score @s effect.freeze matches 1.. if score generic server matches 19 run scoreboard players set @s screen_effect 401

execute if score @s effect.freeze matches ..0 run effect clear @s slowness
execute if score @s effect.freeze matches ..0 run effect clear @s slow_falling
execute if score @s effect.freeze matches ..0 run scoreboard players set @s screen_effect 0
execute if score @s effect.freeze matches ..0 run scoreboard players reset @s effect.freeze

execute if score @s effect.freeze matches 0.. run scoreboard players remove @s effect.freeze 1