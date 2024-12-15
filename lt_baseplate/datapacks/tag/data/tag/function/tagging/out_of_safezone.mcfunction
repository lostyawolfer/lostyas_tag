# title @s times 0 0 20
# title @s title [{"translate": "safezone.leave.title", "color": "red"}]
# title @s subtitle [{"translate": "safezone.leave.subtitle", "color": "gold"}]
playsound tag:safezone_stop master @s
stopsound @s master tag:safezone_start

tag @s remove safezone
clear @s heart_of_the_sea