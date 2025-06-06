# speeds
execute if score @s jump.bhop matches 2..5 run attribute @s sneaking_speed base set .4
execute if score @s jump.bhop matches 6..10 run attribute @s sneaking_speed base set .7
execute if score @s jump.bhop matches 11.. run attribute @s sneaking_speed base set 1

execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 2 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .175
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 3 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .2
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 4 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .225
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 5 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .25
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 6 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .275
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 7 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .3
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 8 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .325
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 9 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .35
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 10 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .375
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 11 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .4
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 12 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .425
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 13 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .45
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 14 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .475
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 15 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .5
execute if score @s is_sneaking matches 0 if score @s jump.bhop matches 16.. run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .525

execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 2 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .35
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 3 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .4
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 4 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .45
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 5 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .5
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 6 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .55
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 7 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .6
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 8 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .65
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 9 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .7
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 10 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .75
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 11 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .8
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 12 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .85
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 13 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .9
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 14 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set .95
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 15 run attribute @s[nbt = {OnGround: 1b}] movement_speed base set 1.0
execute if score @s is_sneaking matches 1 if score @s jump.bhop matches 16.. run attribute @s[nbt = {OnGround: 1b}] movement_speed base set 1.05



# add bhop & playtime
execute if score @s jump matches 1.. run scoreboard players add @s jump.bhop 1
execute if score @s jump matches 1.. run scoreboard players add random server 1
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

execute if score @s jump matches 1.. if score @s jump.bhop2 matches 10..24 if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s points.reason.trigger 1
execute if score @s jump matches 1.. if score @s jump.bhop2 matches 25..49 if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s points.reason.trigger 2
execute if score @s jump matches 1.. if score @s jump.bhop2 matches 50.. if block ~ ~2 ~ air if score @s stat.speed matches 20.. run scoreboard players set @s points.reason.trigger 3

#execute if score @s jump matches 1.. run playsound jump player @a ~ ~ ~ .5
execute if score @s jump matches 1.. run scoreboard players remove @s jump 1

# remove bhop
execute if score @s jump.timer matches 1.. if entity @s[nbt={OnGround:1b}] unless score @s pa.current matches 10 run scoreboard players remove @s jump.timer 6
execute if score @s jump.timer matches 1.. if entity @s[nbt={OnGround:1b}] if score @s pa.current matches 10 run scoreboard players remove @s jump.timer 3
execute if score @s jump.timer matches 1.. if score @s stat.speed matches 0 if entity @s[nbt={OnGround:1b}] unless score @s pa.current matches 10 run scoreboard players remove @s jump.timer 20
execute if score @s jump.timer matches 1.. if score @s stat.speed matches 0 if entity @s[nbt={OnGround:1b}] if score @s pa.current matches 10 run scoreboard players remove @s jump.timer 6
execute if score @s jump.timer matches ..-1 run scoreboard players set @s jump.timer 0
execute if score @s jump.timer matches 1.. run scoreboard players remove @s jump.timer 1

execute if score @s jump.timer matches 0 run attribute @s movement_speed base set .15
execute if score @s jump.bhop matches ..0 run attribute @s movement_speed base set .15
execute if score @s jump.bhop matches ..0 run attribute @s sneaking_speed base set .2
execute if score @s jump.bhop matches ..0 run scoreboard players set @s jump.bhop 0
execute if score @s jump.timer matches 0 run scoreboard players set @s jump.bhop 0
execute if score @s jump.timer matches 0 run attribute @s movement_speed base set .15
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 21.. unless score @s pa.current matches 10 run scoreboard players remove @s jump.bhop 20
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 21.. if score @s pa.current matches 10 run scoreboard players remove @s jump.bhop 15
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 1.. unless score @s pa.current matches 10 run scoreboard players remove @s jump.bhop 3
execute if score @s jump.timer matches 1..40 if score @s jump.bhop matches 1.. if score @s pa.current matches 10 run scoreboard players remove @s jump.bhop 2
execute if score @s jump.timer matches 0 run scoreboard players set @s jump.bhop2 0
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 25..49 run scoreboard players set @s jump.bhop2 15
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 50..74 run scoreboard players set @s jump.bhop2 20
execute if score @s jump.timer matches 31..40 if score @s jump.bhop2 matches 75.. run scoreboard players set @s jump.bhop2 50
execute if score @s jump.timer matches 1..30 run scoreboard players set @s jump.bhop2 15
#execute if score @s jump.timer matches 0..30 unless score @s playtime.title.reason matches 2..4 run scoreboard players set @s jump.bhop2.title 0

execute if score @s jump.timer matches 0 run scoreboard players reset @s jump.bhop2
