# title @s times 0 0 20
# title @s title [{"translate": "safezone.enter.title", "color": "green"}]
# title @s subtitle [{"translate": "safezone.enter.subtitle", "color": "aqua"}]

tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " entered a safezone"]


effect give @s weakness infinite 255 true
attribute @s knockback_resistance base set 10000
execute unless data entity @s {Dimension:"minecraft:lt_lobby"} unless score @s anim.death matches ..-1 run playsound tag:safezone_start master @s ~ ~ ~ .25
tag @s add safezone