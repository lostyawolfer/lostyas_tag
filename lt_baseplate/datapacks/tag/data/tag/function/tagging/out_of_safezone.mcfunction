# title @s times 0 0 20
# title @s title [{"translate": "safezone.leave.title", "color": "red"}]
# title @s subtitle [{"translate": "safezone.leave.subtitle", "color": "gold"}]

tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " left the safezone"]

playsound tag:safezone_stop master @s ~ ~ ~ .25
stopsound @s master tag:safezone_start

scoreboard players set @s screen_effect 0
tag @s remove safezone