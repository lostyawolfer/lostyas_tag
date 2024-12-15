# title @s times 0 0 20
# title @s title [{"translate": "safezone.leave.title", "color": "red"}]
# title @s subtitle [{"translate": "safezone.leave.subtitle", "color": "gold"}]
playsound tag:safezone_stop master @s
stopsound @s master tag:safezone_start

scoreboard players set @s screen_effect 0
tag @s remove safezone