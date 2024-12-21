execute unless score @s anim.death matches -200.. run scoreboard players set @s anim.death -11
execute if score @s anim.death matches 1.. run scoreboard players set @s anim.death -1

# execute if score @s anim.death matches -1 run tag @s remove dead
# execute if score @s anim.death matches -1 run tag @s remove tagger
# execute if score @s anim.death matches -1 run tag @s remove special
# execute if score @s anim.death matches -11 run tag @s remove dead
# execute if score @s anim.death matches -11 run tag @s remove tagger
# execute if score @s anim.death matches -11 run tag @s remove special
scoreboard players set @s effect.downed -1
scoreboard players set @s effect.freeze -1

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
execute if score @s anim.death matches -25..-15 run scoreboard players set @s screen_effect 263
execute if score @s anim.death matches -15 run function tag:misc/spawntp
execute if score @s anim.death matches -26 run effect give @s blindness 1 0 true
execute if score @s anim.death matches -15 run gamemode spectator @s
execute if score @s anim.death matches -27 run gamemode adventure @s




execute if score @s anim.death matches -26 run scoreboard players set @s screen_effect 264
execute if score @s anim.death matches -27 run scoreboard players set @s screen_effect 265
execute if score @s anim.death matches -28 run scoreboard players set @s screen_effect 266





execute if score @s anim.death matches -4 run scoreboard players set @s anim.death -14
execute if score @s anim.death matches ..-28 run scoreboard players set @s screen_effect 0
execute if score @s anim.death matches ..-28 run scoreboard players reset @s anim.death