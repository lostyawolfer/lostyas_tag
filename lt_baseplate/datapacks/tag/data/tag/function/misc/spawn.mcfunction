execute unless score @s anim.death matches -200.. run scoreboard players set @s anim.death -11
execute if score @s anim.death matches 1.. run scoreboard players set @s anim.death -1

execute if score @s anim.death matches -1 run tag @s remove dead
execute if score @s anim.death matches -1 run tag @s remove tagger
execute if score @s anim.death matches -1 run tag @s remove special
execute if score @s anim.death matches -1 run tag @s add normal_player_decoration
execute if score @s anim.death matches -11 run tag @s remove dead
execute if score @s anim.death matches -11 run tag @s remove tagger
execute if score @s anim.death matches -11 run tag @s remove special
execute if score @s anim.death matches -11 run tag @s add normal_player_decoration
scoreboard players set @s[scores={effect.downed=1..}] effect.downed -1
scoreboard players set @s effect.freeze -1
effect clear @s

execute if score @s anim.death matches ..-1 run scoreboard players remove @s anim.death 1

execute if score @s anim.death matches -2 run stopsound @s
execute if score @s anim.death matches -2 run playsound tag:revive master @s
execute if score @s anim.death matches -2 run scoreboard players set @s screen_effect 250
execute if score @s anim.death matches -3 run scoreboard players set @s screen_effect 251
execute if score @s anim.death matches -4 run scoreboard players set @s screen_effect 252

execute if score @s anim.death matches -12 run scoreboard players set @s screen_effect 260
execute if score @s anim.death matches -13 run scoreboard players set @s screen_effect 261
execute if score @s anim.death matches -14 run scoreboard players set @s screen_effect 262


execute if score @s anim.death matches -4 run title @s actionbar ""
execute if score @s anim.death matches -4 run title @s title ""
execute if score @s anim.death matches -4 run title @s subtitle ""
execute if score @s anim.death matches -14 run title @s actionbar ""
execute if score @s anim.death matches -14 run title @s title ""
execute if score @s anim.death matches -14 run title @s subtitle ""
execute if score @s anim.death matches -35..-15 run scoreboard players set @s screen_effect 263
execute if score @s anim.death matches -35..-16 run tp @s @s
execute if score @s anim.death matches -35..-16 run tp @s ~ ~ ~
execute if score @s anim.death matches -15 run function tag:misc/spawntp
execute if score @s anim.death matches -15 run scoreboard players set @s[scores={ab.use=1..}] ab.use 0
execute if score @s anim.death matches -15 run scoreboard players set @s[scores={ab.cd=2..}] ab.cd 1
execute if score @s anim.death matches -15 run scoreboard players set @s[scores={p.cd=2..}] p.cd 1
execute if score @s anim.death matches -15 run scoreboard players set @s[scores={gh.cd=2..}] gh.cd 1
execute if score @s anim.death matches -36 run effect give @s blindness 1 0 true
execute if score @s anim.death matches -15 run tag @s add normal_player_decoration
execute if score @s anim.death matches -36..-15 run gamemode spectator @s
execute if score @s anim.death matches -37 run gamemode adventure @s
execute if score @s anim.death matches -37 run tag @s remove normal_player_decoration
execute if score @s anim.death matches -37 run function tag:tagging/go_in_safezone




execute if score @s anim.death matches -36 run scoreboard players set @s screen_effect 264
execute if score @s anim.death matches -37 run scoreboard players set @s screen_effect 265
execute if score @s anim.death matches -38 run scoreboard players set @s screen_effect 266





execute if score @s anim.death matches -4 run scoreboard players set @s anim.death -14
execute if score @s anim.death matches ..-38 run scoreboard players set @s screen_effect 0
execute if score @s anim.death matches ..-38 run scoreboard players reset @s anim.death
