## main playtime
#  counter
scoreboard players add #ms playtime 1
scoreboard players add #ms_remove playtime 1
#  add
execute if score #ms playtime matches 20.. if entity @a[tag = tagger, gamemode = adventure, tag = !safezoned, tag = !afk] run scoreboard players add @a[gamemode = adventure, tag = !tagger, tag = !safezoned, tag = !afk, team = !menu_tagger, team = !menu] playtime 1
#execute if score #ms playtime matches 20.. if entity @a[tag = tagger, gamemode = adventure, tag = !safezoned, tag = !afk] run scoreboard players add @a[gamemode = adventure, tag = !tagger, tag = !safezoned, tag = !afk, team = !menu_tagger, team = !menu] playtime.title.trigger 0
execute if score #ms playtime matches 20.. run scoreboard players set #ms playtime 0
#  remove to taggers
#execute if score #ms_remove playtime matches 20.. if entity @a[team = player] run scoreboard players remove @a[gamemode = adventure, tag = tagger, tag = !safezoned, tag = !afk, scores = {playtime = 1..}] playtime 1
#execute if score #ms_remove playtime matches 20.. run scoreboard players set #ms_remove playtime 0


## near tagger +points
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
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if entity @a[team = tagger, tag=!afk, tag = !safezoned, distance=..5] run scoreboard players set @s playtime.run_away 1

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s if entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..35] run scoreboard players set @s playtime.run_away.timer 0
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..45] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..60] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..75] run scoreboard players add @s playtime.run_away.timer 1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores = {playtime.run_away=1}] at @s unless entity @a[tag=tagger, tag=!afk, tag = !safezoned, distance=..100] run scoreboard players add @s playtime.run_away.timer 30

execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players add @s playtime 10
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.title.trigger -1
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.run_away 0
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned] at @s if score @s playtime.run_away.timer matches 80.. run scoreboard players set @s playtime.run_away.timer 0

execute as @a[scores = {playtime.run_away=0}] run scoreboard players set @s playtime.run_away.timer 0

scoreboard players set @a[team=tagger, scores={playtime.run_away=1}] playtime.run_away 0


## dash
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed=225..}, tag =!dash] if entity @a[tag=tagger, tag=!afk] at @s run scoreboard players set @s playtime.title.trigger 6
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed=225..}, tag =!dash] if entity @a[tag=tagger, tag=!afk] at @s run scoreboard players add @s playtime 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed=225..}, tag =!dash] if entity @a[tag=tagger, tag=!afk] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed=225..}, tag =!dash] if entity @a[tag=tagger, tag=!afk] at @s run tag @s add dash
execute as @a[tag = !tagger, tag = !afk, tag = !safezoned, scores={stat.speed=..199}, tag = dash] if entity @a[tag=tagger, tag=!afk] at @s run tag @s remove dash