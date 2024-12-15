execute unless score @s anim.death matches 17.. unless score @s anim.death matches -1 run scoreboard players add @s anim.death 1
title @s actionbar {"text": "you are a spectator", "color": "red"}
execute if score @s anim.death matches 1 run damage @s .1
execute if score @s anim.death matches 1 run playsound tag:death master @s ~ ~ ~ .75
execute if score @s anim.death matches 1 run playsound tag:death_main master @s ~ ~ ~ 1
gamemode spectator @s
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