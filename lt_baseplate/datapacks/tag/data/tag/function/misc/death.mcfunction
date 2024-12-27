execute unless score @s anim.death matches 17..99 unless score @s anim.death matches -1 run scoreboard players add @s anim.death 1




execute if score @s anim.death matches 1 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " died"]
execute if score @s anim.death matches 1 run damage @s .01
execute if score @s anim.death matches 1 run playsound tag:death master @s ~ ~ ~ 1
execute if score @s anim.death matches 1 run playsound tag:death_main master @s ~ ~ ~ 1

execute if score @s anim.death matches 1 run scoreboard players set @s screen_effect 200
execute if score @s anim.death matches 2 run scoreboard players set @s screen_effect 201
execute if score @s anim.death matches 3 run scoreboard players set @s screen_effect 202
execute if score @s anim.death matches 4 run scoreboard players set @s screen_effect 203
execute if score @s anim.death matches 5 run scoreboard players set @s screen_effect 204
execute if score @s anim.death matches 6 run scoreboard players set @s screen_effect 205
execute if score @s anim.death matches 7 run scoreboard players set @s screen_effect 206
execute if score @s anim.death matches 8 run scoreboard players set @s screen_effect 207
execute if score @s anim.death matches 9 run scoreboard players set @s screen_effect 208
execute if score @s anim.death matches 10 run scoreboard players set @s screen_effect 209
execute if score @s anim.death matches 11 run scoreboard players set @s screen_effect 210
execute if score @s anim.death matches 12 run scoreboard players set @s screen_effect 211
execute if score @s anim.death matches 13 run scoreboard players set @s screen_effect 212
execute if score @s anim.death matches 14 run scoreboard players set @s screen_effect 213
execute if score @s anim.death matches 15..16 run scoreboard players set @s screen_effect 214
execute if score @s anim.death matches 17 run scoreboard players set @s screen_effect 215



execute if score @s anim.death matches 101 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " died by being downed"]
execute if score @s anim.death matches 101 run damage @s .01
execute if score @s anim.death matches 101 run playsound tag:death master @s ~ ~ ~ 1
execute if score @s anim.death matches 101 run playsound tag:death_main master @s ~ ~ ~ 1

execute if score @s anim.death matches 101 run scoreboard players set @s screen_effect 516
execute if score @s anim.death matches 102 run scoreboard players set @s screen_effect 517
execute if score @s anim.death matches 103 run scoreboard players set @s screen_effect 518
execute if score @s anim.death matches 104 run scoreboard players set @s screen_effect 519
execute if score @s anim.death matches 105 run scoreboard players set @s screen_effect 520
execute if score @s anim.death matches 106 run scoreboard players set @s screen_effect 521
execute if score @s anim.death matches 107 run scoreboard players set @s screen_effect 522
execute if score @s anim.death matches 108 run scoreboard players set @s screen_effect 523
execute if score @s anim.death matches 109 run scoreboard players set @s screen_effect 524
execute if score @s anim.death matches 110 run scoreboard players set @s screen_effect 525
execute if score @s anim.death matches 111 run scoreboard players set @s screen_effect 526
execute if score @s anim.death matches 112 run scoreboard players set @s screen_effect 527
execute if score @s anim.death matches 113 run scoreboard players set @s screen_effect 528
execute if score @s anim.death matches 114 run scoreboard players set @s screen_effect 529
execute if score @s anim.death matches 115..116 run scoreboard players set @s screen_effect 530
execute if score @s anim.death matches 117 run scoreboard players set @s screen_effect 215
execute if score @s anim.death matches 117 run scoreboard players set @s anim.death 17



execute unless entity @a[distance=0, tag=!dead] run title @s actionbar {"text": "you are a spectator", "color": "red"}
execute if entity @a[distance=0, tag=!dead] run title @s actionbar [{"text": "now spectating: ", "color": "red"}, {"selector": "@a[distance=0, tag=!dead]"}]
gamemode spectator @s
