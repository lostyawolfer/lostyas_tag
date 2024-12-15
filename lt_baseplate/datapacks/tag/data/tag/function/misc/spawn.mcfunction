tag @s remove dead
execute if score @s anim.death matches ..-1 run scoreboard players remove @s anim.death 1

execute if score @s anim.death matches -2 run playsound tag:revive master @s
execute if score @s anim.death matches -2 run scoreboard players set @s screen_effect 250
execute if score @s anim.death matches -3 run scoreboard players set @s screen_effect 251
execute if score @s anim.death matches -4 run scoreboard players set @s screen_effect 252

execute if score @s anim.death matches -12 run scoreboard players set @s screen_effect 260
execute if score @s anim.death matches -13 run scoreboard players set @s screen_effect 261
execute if score @s anim.death matches -14 run scoreboard players set @s screen_effect 262


execute if score @s anim.death matches -4 run title @s actionbar ""
execute if score @s anim.death matches -14 run title @s actionbar ""
execute if score @s anim.death matches -20..-15 run scoreboard players set @s screen_effect 263
execute if score @s anim.death matches -15 run function tag:misc/spawntp
execute if score @s anim.death matches -21 run effect give @s blindness 1 0 true
execute if score @s anim.death matches -15 run gamemode spectator @s
execute if score @s anim.death matches -22 run gamemode adventure @s




execute if score @s anim.death matches -21 run scoreboard players set @s screen_effect 264
execute if score @s anim.death matches -22 run scoreboard players set @s screen_effect 265
execute if score @s anim.death matches -23 run scoreboard players set @s screen_effect 266





execute if score @s anim.death matches -4 run scoreboard players set @s anim.death -14
execute if score @s anim.death matches ..-24 run scoreboard players set @s screen_effect 0
execute if score @s anim.death matches ..-24 run scoreboard players reset @s anim.death