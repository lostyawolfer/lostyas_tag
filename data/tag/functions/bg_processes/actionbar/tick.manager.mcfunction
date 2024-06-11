## explanation for file suffixes
# ==================
# normal = thing is viewed normal
# thousand = thing is viewed in format xx.xk; used if the value is more than 10k
# ==================
# _nn = normal-normal = playtime normal, best normal
# _nt = normal-thousand = playtime normal, best thousand
# _tn = thousand-normal = playtime thousand, best normal
# _tt = thousand-thousand = both thousand
# ==================
# this is needed to prevent clutter in the individual files
# imagine if it wasn't divided into those different files and you had to search up stuff in the same file
# it's also a performance nightmare. i mean, yea, the whole game is performance nightmare, but you know...
# ==================


## animation handlers
scoreboard players remove @a[scores={playtime.title.anim_cnt=-19..}] playtime.title.anim_cnt 1

execute as @a[scores = {playtime.title.anim_cnt = ..13}] if score @s playtime.title.reason matches 0..1 run scoreboard players reset @s playtime.title.reason
execute as @a[scores = {playtime.title.anim_cnt = ..13}] if score @s playtime.title.reason matches 0..1 run scoreboard players reset @s playtime.title.anim_cnt

execute as @a[scores = {playtime.title.anim_cnt = ..-20}] if score @s playtime.title.reason matches -100..100 run scoreboard players reset @s playtime.title.reason
execute as @a[scores = {playtime.title.anim_cnt = ..-20}] if score @s playtime.title.reason matches -100..100 run scoreboard players reset @s playtime.title.anim_cnt


execute as @a[scores = {playtime.title.trigger = 2..}] unless score @s playtime.title.reason matches ..-1 run scoreboard players set @s playtime.title.anim_cnt 20
execute as @a[scores = {playtime.title.trigger = 2..}] unless score @s playtime.title.reason matches ..-1 run scoreboard players operation @s playtime.title.reason = @s playtime.title.trigger
execute as @a[scores = {playtime.title.trigger = 2..}] run scoreboard players reset @s playtime.title.trigger
 
execute as @a[scores = {playtime.title.trigger = 0..1}] unless score @s playtime.title.reason matches ..-1 unless score @s playtime.title.reason matches 2.. run scoreboard players set @s playtime.title.anim_cnt 20
execute as @a[scores = {playtime.title.trigger = 0..1}] unless score @s playtime.title.reason matches ..-1 unless score @s playtime.title.reason matches 2.. run scoreboard players operation @s playtime.title.reason = @s playtime.title.trigger
execute as @a[scores = {playtime.title.trigger = 0..1}] run scoreboard players reset @s playtime.title.trigger

execute as @a[scores = {playtime.title.trigger = ..-1}] run scoreboard players set @s playtime.title.anim_cnt 20
execute as @a[scores = {playtime.title.trigger = ..-1}] run scoreboard players operation @s playtime.title.reason = @s playtime.title.trigger
execute as @a[scores = {playtime.title.trigger = ..-1}] run scoreboard players reset @s playtime.title.trigger




## no game
# no valid tagger exists
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_game/no_tagger_nn
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_game/no_tagger_tn
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_game/no_tagger_nt
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_game/no_tagger_tt


## yes game
# players
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. unless entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/normal_nn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. unless entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/normal_tn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. unless entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/normal_nt
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. unless entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/normal_tt
# taggers
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. if entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/tagger_nn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. if entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/tagger_tn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. if entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/tagger_nt
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. if entity @s[tag = tagger] run function tag:bg_processes/actionbar/yes_game/tagger_tt