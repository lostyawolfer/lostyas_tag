# speeds
execute if score @s jump.bhop matches 2..5 run attribute @s sneaking_speed base set .4
execute if score @s jump.bhop matches 6..10 run attribute @s sneaking_speed base set .7
execute if score @s jump.bhop matches 11.. run attribute @s sneaking_speed base set 1

execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 2 run attribute @s movement_speed base set .175
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 3 run attribute @s movement_speed base set .2
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 4 run attribute @s movement_speed base set .225
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 5 run attribute @s movement_speed base set .25
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 6 run attribute @s movement_speed base set .275
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 7 run attribute @s movement_speed base set .3
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 8 run attribute @s movement_speed base set .325
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 9 run attribute @s movement_speed base set .35
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 10 run attribute @s movement_speed base set .375
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 11 run attribute @s movement_speed base set .4
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 12 run attribute @s movement_speed base set .425
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 13 run attribute @s movement_speed base set .45
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 14 run attribute @s movement_speed base set .475
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 15 run attribute @s movement_speed base set .5
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 16.. run attribute @s movement_speed base set .525

execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 2 run attribute @s movement_speed base set .7
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 3 run attribute @s movement_speed base set .8
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 4 run attribute @s movement_speed base set .9
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 5 run attribute @s movement_speed base set 1.0
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 6 run attribute @s movement_speed base set 1.1
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 7 run attribute @s movement_speed base set 1.2
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 8 run attribute @s movement_speed base set 1.3
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 9 run attribute @s movement_speed base set 1.4
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 10 run attribute @s movement_speed base set 1.5
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 11 run attribute @s movement_speed base set 1.6
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 12 run attribute @s movement_speed base set 1.7
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 13 run attribute @s movement_speed base set 1.8
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 14 run attribute @s movement_speed base set 1.9
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 15 run attribute @s movement_speed base set 2.0
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 16.. run attribute @s movement_speed base set 2.1



# add bhop & playtime
execute if score @s jump matches 1.. run scoreboard players add @s jump.bhop 1
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players add @s playtime 2
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players set @s playtime.trimp.title_anim 20
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players set @s effect.throw 2
execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ air run scoreboard players add @s jump.bhop2 1
#execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ air if score @s jump.bhop2 matches 10.. run scoreboard players add @s jump.bhop2.title 1
execute if score @s jump matches 1.. if block ~ ~2 ~ air run scoreboard players set @s jump.timer 100
execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ cave_air run scoreboard players add @s jump.bhop2 1
#execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ cave_air if score @s jump.bhop2 matches 10.. run scoreboard players add @s jump.bhop2.title 1
execute if score @s jump matches 1.. if block ~ ~2 ~ cave_air run scoreboard players set @s jump.timer 100
execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ moving_piston run scoreboard players add @s jump.bhop2 1
#execute if score @s jump matches 1.. if score @s stat.speed matches 20.. if entity @s[gamemode=adventure, tag=!safezoned, tag=!afk, tag=!tagger] if block ~ ~2 ~ moving_piston if score @s jump.bhop2 matches 20.. run scoreboard players add @s jump.bhop2.title 1
execute if score @s jump matches 1.. if block ~ ~2 ~ moving_piston run scoreboard players set @s jump.timer 100
execute if score @s jump matches 1.. unless block ~ ~2 ~ air unless block ~ ~2 ~ cave_air unless block ~ ~2 ~ moving_piston run scoreboard players set @s jump.timer 20

#execute as @a[tag = tagger] at @s run scoreboard players set @s jump.bhop2.title 0
#execute as @a[tag = safezoned] at @s run scoreboard players set @s jump.bhop2.title 0
#execute as @a[tag = afk] at @s run scoreboard players set @s jump.bhop2.title 0

#execute as @a[tag = tagger] at @s if block ~ ~2 ~ air run scoreboard players set @s jump.bhop2 0

#execute as @a[scores={jump.bhop=5..}] at @s run effect give @s jump_boost 1 254 true
#execute as @a[scores={jump=1..}] at @s run title @s[scores={jump.bhop=5..19}] actionbar [{"score":{"name":"@s","objective":"jump.bhop"},"color":"dark_purple"},{"text":" bhop"}]
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 10..24 if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s playtime.title.trigger 2
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 10.. if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players add @s playtime 1
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 25..49 if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s playtime.title.trigger 3
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 25.. if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players add @s playtime 1
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 49.. if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s playtime.title.trigger 4
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 49.. if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players add @s playtime 1
#execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}] at @s run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ .5 1.5
#execute if score @s jump matches 1.. if score @s jump.bhop2 matches 10.. if entity @s[tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] if block ~ ~2 ~ air if score @s stat.speed matches 20.. run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2

#execute if score @s jump matches 1.. run playsound jump player @a ~ ~ ~ .5
execute if score @s jump matches 1.. run scoreboard players remove @s jump 1

# remove bhop
execute if score @s jump.timer matches 1.. if entity @s[nbt={OnGround:1b}] run scoreboard players remove @s jump.timer 6
execute if score @s jump.timer matches 1.. if score @s stat.speed matches 0 if entity @s[nbt={OnGround:1b}] run scoreboard players remove @s jump.timer 20
execute if score @s jump.timer matches ..-1 run scoreboard players set @s jump.timer 0
execute if score @s jump.timer matches 1.. run scoreboard players remove @s jump.timer 1

execute if score @s jump.timer matches 0 run attribute @s movement_speed base set .15
execute if score @s jump.bhop matches ..0 run attribute @s movement_speed base set .15
execute if score @s jump.bhop matches ..0 run attribute @s sneaking_speed base set .2
execute if score @s jump.bhop matches ..0 run scoreboard players set @s jump.bhop 0
execute if score @s jump.timer matches 0 run scoreboard players set @s jump.bhop 0
execute if score @s jump.timer matches 0 run attribute @s movement_speed base set .15
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 21.. run scoreboard players remove @s jump.bhop 20
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 1.. run scoreboard players remove @s jump.bhop 3
execute if score @s jump.timer matches 0 run scoreboard players set @s jump.bhop2 0
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 25..49 run scoreboard players set @s jump.bhop2 15
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 50..74 run scoreboard players set @s jump.bhop2 20
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 75.. run scoreboard players set @s jump.bhop2 50
execute if score @s jump.timer matches 1..30 run scoreboard players set @s jump.bhop2 15
#execute if score @s jump.timer matches 0..30 unless score @s playtime.title.reason matches 2..4 run scoreboard players set @s jump.bhop2.title 0

execute if score @s jump.timer matches 0 run scoreboard players reset @s jump.bhop2
