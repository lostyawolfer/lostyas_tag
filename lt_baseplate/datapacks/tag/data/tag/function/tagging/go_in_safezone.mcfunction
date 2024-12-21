# title @s times 0 0 20
# title @s title [{"translate": "safezone.enter.title", "color": "green"}]
# title @s subtitle [{"translate": "safezone.enter.subtitle", "color": "aqua"}]

tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " entered a safezone"]

playsound tag:safezone_start master @s ~ ~ ~ .25
tag @s add safezone