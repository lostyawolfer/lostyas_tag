# title @s times 0 0 20
# title @s title [{"translate": "safezone.leave.title", "color": "red"}]
# title @s subtitle [{"translate": "safezone.leave.subtitle", "color": "gold"}]

execute if entity @s[nbt={Dimension:"minecraft:lt_lobby"}] run return 1

tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " left the safezone"]

execute unless score @s anim.death matches ..-1 run playsound tag:safezone_stop master @s ~ ~ ~ .25
stopsound @s master tag:safezone_start
effect clear @s weakness
attribute @s knockback_resistance base set 0

scoreboard players set @s screen_effect 0
tag @s remove safezone