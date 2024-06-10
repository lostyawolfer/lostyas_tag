## main playtime
#  counter
scoreboard players add #ms playtime 1
scoreboard players add #ms_remove playtime 1
#  add
execute if score #ms playtime matches 20.. if entity @a[tag = tagger, gamemode = adventure, tag = !safezoned, tag = !afk] run scoreboard players add @a[gamemode = adventure, tag = !tagger, tag = !safezoned, tag = !afk, team = !menu_tagger, team = !menu] playtime 1
execute if score #ms playtime matches 20.. if entity @a[tag = tagger, gamemode = adventure, tag = !safezoned, tag = !afk] run scoreboard players add @a[gamemode = adventure, tag = !tagger, tag = !safezoned, tag = !afk, team = !menu_tagger, team = !menu] playtime.title.trigger 0
execute if score #ms playtime matches 20.. run scoreboard players set #ms playtime 0
#  remove to taggers
execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players set @s playtime.title.trigger 1
execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ .25 1.5
execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players remove @s playtime 1

#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=100..}] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players set @s playtime.title.trigger -4
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=100..}] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 .5
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=100..}] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players set @s playtime 0
#execute if score #ms_remove playtime matches 20 if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players set @s[scores={tagger_timer=1200..}] playtime.title.trigger 1
#execute if score #ms_remove playtime matches 20 if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] at @s run playsound minecraft:block.note_block.hat master @s[scores={tagger_timer=1200..}] ~ ~ ~ .25 1.5
#execute if score #ms_remove playtime matches 20 if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] run scoreboard players remove @s[scores={tagger_timer=1200..}] playtime 1
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=..599}] run scoreboard players set @s[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] playtime.title.trigger 1
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=..599}] run scoreboard players remove @s[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] playtime 1
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=600..}] run scoreboard players set @s[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] playtime.title.trigger -4
#execute if score #ms_remove playtime matches 40.. if entity @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] as @a[scores={tagger_timer=600..}] run scoreboard players set @s[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] playtime 0
execute if score #ms_remove playtime matches 40.. run scoreboard players set #ms_remove playtime 0


## near tagger
#  counter
scoreboard players add #ms_near-tagger playtime 1
#  get when needed
execute if score #ms_near-tagger playtime matches 40 as @a[tag=tagger, gamemode = adventure, tag = !safezoned, tag = !afk] at @s run scoreboard players add @a[tag=!tagger, distance=..35, tag = !safezoned, tag = !afk, gamemode = adventure, team = !menu_tagger, team = !menu] playtime.near_tagger 1

execute if score #ms_near-tagger playtime matches 20 as @a[tag=tagger, gamemode = adventure, tag = !safezoned, tag = !afk] at @s run scoreboard players add @a[tag=!tagger, distance=..20, tag = !safezoned, tag = !afk, gamemode = adventure, team = !menu_tagger, team = !menu] playtime.near_tagger 1

execute if score #ms_near-tagger playtime matches 30 as @a[tag=tagger, gamemode = adventure, tag = !safezoned, tag = !afk] at @s run scoreboard players add @a[tag=!tagger, distance=..10, tag = !safezoned, tag = !afk, gamemode = adventure, team = !menu_tagger, team = !menu] playtime.near_tagger 1
execute if score #ms_near-tagger playtime matches 10 as @a[tag=tagger, gamemode = adventure, tag = !safezoned, tag = !afk] at @s run scoreboard players add @a[tag=!tagger, distance=..10, tag = !safezoned, tag = !afk, gamemode = adventure, team = !menu_tagger, team = !menu] playtime.near_tagger 1

execute if score #ms_near-tagger playtime matches 41.. run scoreboard players set #ms_near-tagger playtime 1
#  add
execute as @a[scores={playtime.near_tagger = 1..}] at @s run scoreboard players add @s jump.bhop.title_anim 0
execute as @a[scores={playtime.near_tagger = 1..}] at @s run scoreboard players set @s playtime.title.trigger 5
execute as @a[scores={playtime.near_tagger = 1..}] at @s run scoreboard players add @s playtime 1
execute as @a[scores={playtime.near_tagger = 1..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2
execute as @a[scores={playtime.near_tagger = 1..}] at @s run scoreboard players set @s playtime.near_tagger 0


## run away
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, gamemode=adventure] at @s if entity @a[tag = tagger, tag=!afk, tag = !safezoned, distance=..5] run scoreboard players set @s playtime.run_away 1
execute as @a[tag = afk, scores = {playtime.run_away=1}] run scoreboard players set @s playtime.run_away 0
execute as @a[tag = safezoned, scores = {playtime.run_away=1}] run scoreboard players set @s playtime.run_away 0
execute as @a[tag = tagger, scores = {playtime.run_away=1}] run scoreboard players set @s playtime.run_away 0
execute as @a[gamemode=!adventure, scores = {playtime.run_away=1}] run scoreboard players set @s playtime.run_away 0
execute as @a[scores = {playtime.run_away=1}] unless entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] run scoreboard players set @s playtime.run_away 0

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s if entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..35] run scoreboard players set @s playtime.run_away.timer 0
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..45] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..60] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..75] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..100] run scoreboard players add @s playtime.run_away.timer 30

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players add @s playtime 10
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.title.trigger -1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 1.5
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.run_away 0
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.run_away.timer 0

execute as @a[scores = {playtime.run_away=0}] run scoreboard players set @s playtime.run_away.timer 0

scoreboard players set @a[team=tagger, scores={playtime.run_away=1}] playtime.run_away 0


## dash
execute as @a[scores={stat.speed2=205..}, nbt={OnGround:1b}] at @s run particle dust 1 1 1 .5 ~ ~.2 ~ .3 0 .3 0 100
execute as @a[scores={stat.speed2=205..}, nbt={OnGround:1b}] at @s run playsound minecraft:block.gravel.break player @a ~ ~ ~ .2 2
execute as @a[scores={stat.speed2=205..}, nbt={OnGround:1b}] at @s run particle block gravel ~ ~.1 ~ .2 0 .2 0 50

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=205..}, tag =!dash, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run scoreboard players set @s playtime.title.trigger 6
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=205..}, tag =!dash, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run scoreboard players add @s playtime 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=205..}, tag =!dash, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=205..}, tag =!dash, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run tag @s add dash
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=..149}, tag = dash, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run tag @s remove dash


## кчау
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run particle dust 1 1 .5 .5 ~ ~.2 ~ .4 0 .4 0 200
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run particle block gravel ~ ~.1 ~ .3 0 .3 0 100
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run particle flame ~ ~.1 ~ .3 .6 .3 0 10
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run particle flame ~ ~.1 ~ .4 0 .4 0 20
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run particle soul_fire_flame ~ ~.1 ~ .4 0 .4 0 1
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run playsound entity.player.hurt_on_fire player @a
execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run scoreboard players set @s jump.timer 20
#execute as @a[scores={stat.speed2=400..}, nbt={OnGround:1b}] at @s run damage @s 999999999 on_fire

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=600..}, tag =!dash2, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run scoreboard players set @s playtime.title.trigger 8
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=600..}, tag =!dash2, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run scoreboard players add @s playtime 5
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=600..}, tag =!dash2, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=600..}, tag =!dash2, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run tag @s add dash2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed2=..149}, tag = dash2, gamemode=adventure] if entity @a[tag=tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s run tag @s remove dash2