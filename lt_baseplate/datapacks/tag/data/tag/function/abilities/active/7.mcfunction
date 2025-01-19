# dark arts
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 1000
execute as @s[scores={ab.use.trigger=1..}] unless score @s pa.current_passive matches 5 run scoreboard players set @s ab.use 10
execute as @s[scores={ab.use.trigger=1..}] if score @s pa.current_passive matches 5 run scoreboard players set @s ab.use 15
execute as @s[scores={ab.use.trigger=1..}] run particle dragon_breath ~ ~1 ~ .3 .5 .3 0 50
execute as @s[scores={ab.use.trigger=1..}] run playsound entity.enderman.teleport player @a
execute as @s[scores={ab.use.trigger=1..}] run tag @s add ab.active.7
execute as @s[scores={ab.use.trigger=1..}] run tag @s add normal_player_decoration
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=1..}] run gamemode spectator @s
scoreboard players reset @a[tag=!ab.active.7] stat.flew_in_ability
execute as @s[scores={stat.flew_in_ability=200..}] unless score @s pa.current_passive matches 5 run scoreboard players set @s ab.use -1
execute as @s[scores={stat.flew_in_ability=500..}] if score @s pa.current_passive matches 5 run scoreboard players set @s ab.use -1

execute as @s[tag=ab.active.7] if entity @a[distance=..0.01, gamemode=!spectator] run scoreboard players set @s ab.use 0
execute as @s[tag=ab.active.7] if entity @a[distance=..0.01, gamemode=!spectator] run function tag:tp_back/player_to_stand/raw

execute as @s[scores={ab.use=1..}] run particle dust_color_transition{from_color:8847522, to_color:0, scale:1} ~ ~1 ~ .3 .5 .3 .1 30

execute as @s[scores={ab.use=-3..-2}] run attribute @s gravity base set .08
execute as @s[scores={ab.use=-3..-2}] run scoreboard players remove @s ab.use 1
execute as @s[scores={ab.use=-1}] run gamemode adventure @s
execute as @s[scores={ab.use=-1}] run particle dragon_breath ~ ~1 ~ .3 .5 .3 0 40
execute as @s[scores={ab.use=-1}] run particle dragon_breath ~ ~1 ~ .3 .5 .3 .1 10
execute as @s[scores={ab.use=-1}] run playsound entity.enderman.teleport player @a
execute as @s[scores={ab.use=-1}] run tag @s remove ab.active.7
execute as @s[scores={ab.use=-1}] run tag @s remove normal_player_decoration
execute as @s[scores={ab.use=-1}] run attribute @s gravity base set 10
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2