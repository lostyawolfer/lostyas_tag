# generic stuff
gamemode adventure @a[gamemode = survival]
recipe give @a *

# variables before functions
execute store result score playercount server if entity @a
execute store result score all-taggers server if entity @a[tag = tagger]
execute store result score taggers server if entity @a[tag = tagger, gamemode = adventure, tag =!safezone]
execute store result score non-taggers server if entity @a[tag =!tagger, gamemode =!creative, tag =!safezone]
execute store result score specials server if entity @a[tag = special, gamemode =!creative, tag =!safezone]
execute store result score active-players server if entity @a[gamemode =!creative, tag =!safezone]
execute store result score adventure-mode-mode server if entity @a[gamemode = adventure, tag =!normal_player_decoration]
execute store result score adventure-mode-decor server if entity @a[tag = normal_player_decoration]
scoreboard players operation adventure-mode server = adventure-mode-mode server
scoreboard players operation adventure-mode server += adventure-mode-decor server
scoreboard players add generic server 1
execute if score generic server matches 20.. run scoreboard players set generic server 0

scoreboard players operation taggers-percent server = all-taggers server
scoreboard players operation taggers-percent server *= 100 consts
scoreboard players operation taggers-percent server /= playercount server

execute if score taggers-percent server matches ..15 if score game server matches 1..6 unless score tag.random_counter server matches -30.. unless score restart server matches 0..400 unless score kill_timer server matches -1..0 if entity @a[tag=!tagger, gamemode=adventure] run function tag:-/tag_randomize_add

execute if entity @a[tag=tagger, tag=!safezone] if entity @a[tag=!tagger, tag=!safezone] if score game server matches 1.. if score generic server matches 0 as @a[tag=!tagger, tag=!dead] unless score @s effect.downed matches 1.. run scoreboard players add @s points.recieve 1


# join and leave routine
execute as @a unless score @s joined matches 0 at @s run function tag:misc/join_routine
execute as @a unless score @s joined matches 0 at @s run scoreboard players set @s joined 0

execute if score playercount_old server > playercount server run function tag:misc/update_player_list


execute as @a[scores={tp.id=0}] store result score @s tp.id run function tag:tp_back/get_id {scoreboard: tp.id}

execute as @a at @s run function tag:misc/bhop


scoreboard players add random server 1
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches 10.. run scoreboard players remove random server 10
execute if score random server matches ..-1 run scoreboard players set random server 0



execute if score game server matches 7 unless score kill_timer server matches -2147483648..2147483647 if entity @a[tag=tagger, tag=!safezone] run scoreboard players set kill_timer server 1200

execute if score restart server matches 1..347 run scoreboard players reset kill_timer
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players remove kill_timer server 1


execute if score kill_timer server matches -1 if score game_prev server matches 7 unless score adventure-mode server matches 2.. run scoreboard players set restart server 1
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run scoreboard players add @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] points.recieve 240
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run scoreboard players set restart server 1
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 .8 .5
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 2
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run particle lava ~ ~1 ~ .3 .5 .3 0 50
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run function tag:-/kill
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run tag @s remove tagger


execute unless score game server matches 7 if score kill_timer server matches -30 run scoreboard players reset kill_timer

execute if score game server matches 7 if score kill_timer server matches ..-150 unless entity @a[tag=tagger] run tag @r[tag=!dead, gamemode=!creative] add tagger
execute if score game server matches 7 if score kill_timer server matches ..-150 run scoreboard players reset @a[tag=tagger] stat.tagger_time
execute if score game server matches 7 if score kill_timer server matches ..-150 if score adventure-mode server matches 2.. run scoreboard players set kill_timer server 1200


execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.s
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s server = kill_timer server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s server /= 20 consts
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s server += 1 consts
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s server %= 60 consts




execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.s1
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s1 server = kill_timer.s server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s1 server /= 10 consts

execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.s2
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s2 server = kill_timer.s server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.s2 server %= 10 consts




execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.m
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m server = kill_timer server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m server /= 20 consts
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m server += 1 consts
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m server /= 60 consts


execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.m1
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m1 server = kill_timer.m server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m1 server /= 10 consts

execute unless score kill_timer server matches -2147483648..2147483647 run scoreboard players reset kill_timer.m2
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m2 server = kill_timer.m server
execute if score kill_timer server matches -2147483648..2147483647 run scoreboard players operation kill_timer.m2 server %= 10 consts




# execute if score kill_timer.m server matches 1.. run title @a[tag=!dead] actionbar [{"text": "", "color": "white"}, {"text":"💣 ", "color":"green"}, {"score":{"name":"kill_timer.m","objective":"server"}}, ":", {"score":{"name":"kill_timer.s1","objective":"server"}}, {"score":{"name":"kill_timer.s2","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 31..60 run title @a[tag=!dead] actionbar [{"text": "", "color": "white"}, {"text":"💣 ", "color":"yellow"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 11..30 run title @a[tag=!dead] actionbar [{"text": "", "color": "white"}, {"text":"💣 ", "color":"gold"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 6..10 if score anim.slow server matches 0..9 run title @a[tag=!dead] actionbar [{"text": "", "color": "white"}, {"text":"💣 ", "color":"red"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 6..10 if score anim.slow server matches 10..19 run title @a[tag=!dead] actionbar [{"text": "", "color": "yellow"}, {"text":"💣 ", "color":"white"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 1..5 if score anim.fast server matches 0..1 run title @a[tag=!dead] actionbar [{"text": "", "color": "white"}, {"text":"💣 ", "color":"red"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 1..5 if score anim.fast server matches 2..3 run title @a[tag=!dead] actionbar [{"text": "", "color": "yellow"}, {"text":"💣 ", "color":"white"}, {"score":{"name":"kill_timer.s","objective":"server"}}]
# execute unless score kill_timer.m server matches 1.. if score kill_timer.s server matches 0 run title @a[tag=!dead] actionbar [{"text": "", "color": "red"}, {"text":"💥 ", "color":"dark_red"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "red"}]








# restart the game if everyone was caught
execute if score restart server matches 1.. run scoreboard players add restart server 1
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run scoreboard players add @a[tag=tagger] points.recieve 240
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run scoreboard players add restart server 1
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run scoreboard players add @a[tag=tagger] points.recieve 240
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run scoreboard players add restart server 1
execute if score restart server matches 1.. run scoreboard players operation restart.s server = restart server
execute if score restart server matches 1.. run scoreboard players operation restart.s server /= 20 consts
execute if score restart server matches 1.. run scoreboard players set restart.s_reversed server 5
execute if score restart server matches 1.. run scoreboard players operation restart.s_reversed server -= restart.s server

execute if score restart server matches 3 as @a run function tag_music:win/play
execute if score restart server matches 3 run title @a times 0 90 10
execute if score restart server matches 1..3 run tag @a[tag=tagger] remove tagger
execute if score restart server matches 1..3 run tag @a[tag=!dead, tag=special] remove special
execute if score restart server matches 1..3 unless score game server matches 6 as @a[scores = {effect.downed=1..}] run scoreboard players set @s effect.downed 0
execute if score restart server matches 1..3 if score game server matches 6 as @a[scores = {effect.downed=1..}] run scoreboard players set @s effect.downed -1
execute if score restart server matches 3 run tellraw @a [{"text": "Game ended", "color": "yellow", "bold": true}]
execute if score restart server matches 3 run title @a title [{"text": "Game over", "color": "red"}]
execute if score restart server matches 3..99 run title @a subtitle [{"text": "Restarting in ", "color": "gold"}, {"score": {"name": "restart.s_reversed", "objective": "server"}}, "..."]
execute if score restart server matches 100 as @a run function tag:misc/spawn
execute if score restart server matches 100 as @a run scoreboard players set @a safezone_state 0
execute if score restart server matches 110 run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nNew game", "color": "yellow", "bold": true}]
execute if score adventure-mode server matches 2.. if score restart server matches 180 if score game server matches 1.. run function tag:-/tag_randomize
execute if score restart server matches 120 if score game server matches 1.. as @a run function tag:points_xp/get_xp_from_points
#execute if score adventure-mode server matches 2.. if score restart server matches 100..380 run scoreboard players set @a[tag=tagger] safezone_state 1
execute if score game server matches 1 if score adventure-mode server matches 2.. if score restart server matches 480.. run scoreboard players set @a safezone_state 0
execute if score game server matches 4 if score adventure-mode server matches 2.. if score restart server matches 480.. run scoreboard players set @a safezone_state 0
execute if score game server matches 2..3 if score adventure-mode server matches 2.. if score restart server matches 480.. run scoreboard players set @a safezone_state -1
execute if score game server matches 5..6 if score adventure-mode server matches 2.. if score restart server matches 480.. run scoreboard players set @a safezone_state -1
execute if score adventure-mode server matches 2.. if score restart server matches 540.. as @a run scoreboard players reset restart server
# execute if score game server matches -2..1 run scoreboard players set @a safezone_state 0
# execute if score game server matches 2..3 run scoreboard players set @a safezone_state -1
# execute if score game server matches 4 run scoreboard players set @a safezone_state 0
# execute if score game server matches 5..6 run scoreboard players set @a safezone_state -1


# effects that negate minecraft stuff
effect give @a saturation 15 10 true
effect give @a instant_health 15 10 true

# ui stuff
bossbar set tag:top players @a
execute unless score force-game server matches 1 if score adventure-mode server matches 2.. if score taggers server matches 1.. unless score game server matches -1.. run scoreboard players operation game server = game_prev server
execute unless score force-game server matches 1 if score adventure-mode server matches 2.. unless score taggers server matches 1.. unless score game server matches -1.. run scoreboard players operation game server = game_prev server
execute unless score force-game server matches 1 unless score adventure-mode server matches 2.. if score playercount server matches 1.. run scoreboard players set game server -2
execute unless score playercount server matches 1.. run scoreboard players set game_prev server 0

bossbar set tag:notif.safezone players @a[tag = safezone]

execute if score game server matches 0.. run scoreboard players operation game_prev server = game server

execute if score is-prod server matches 0 run function tag:misc/bossbar/dev
execute if score is-prod server matches 1 run function tag:misc/bossbar/prod

# other functions
scoreboard players add anim.fast server 1
execute if score anim.fast server matches 4.. run scoreboard players set anim.fast server 0
execute if score game server matches 1.. if score anim.fast server matches 0..1 run team modify 013player_glow color aqua
execute if score game server matches 1.. if score anim.fast server matches 0..1 run team modify 022special_alert suffix {"text": "⚠", "color": "white"}
execute if score game server matches 1.. if score anim.fast server matches 2..3 run team modify 013player_glow color white
execute if score game server matches 1.. if score anim.fast server matches 2..3 run team modify 022special_alert suffix {"text": "⚠", "color": "red"}

scoreboard players add anim.slow server 1
execute if score anim.slow server matches 20.. run scoreboard players set anim.slow server 0
execute if score game server matches 1.. if score anim.slow server matches 0..9 run team modify 012special_alert suffix {"text": "⚠", "color": "white"}
execute if score game server matches 1.. if score anim.slow server matches 0..9 run team modify 001tagger_crouch suffix {"text": "↓", "color": "yellow"}
execute if score game server matches 1.. if score anim.slow server matches 0..9 run team modify 011tagger_crouch suffix {"text": "↓", "color": "yellow"}
execute if score game server matches 1.. if score anim.slow server matches 0..9 run team modify 021tagger_crouch suffix {"text": "↓", "color": "yellow"}
execute if score game server matches 1.. if score anim.slow server matches 10..19 run team modify 012special_alert suffix {"text": "⚠", "color": "red"}
execute if score game server matches 1.. if score anim.slow server matches 10..19 run team modify 001tagger_crouch suffix {"text": "↓", "color": "#BBBB00"}
execute if score game server matches 1.. if score anim.slow server matches 10..19 run team modify 011tagger_crouch suffix {"text": "↓", "color": "#BBBB00"}
execute if score game server matches 1.. if score anim.slow server matches 10..19 run team modify 021tagger_crouch suffix {"text": "↓", "color": "#BBBB00"}


execute if score game server matches 1.. run team modify 003player color aqua
execute if score game server matches 1.. run team modify 103player_safezone prefix {"text": "⭐", "color": "aqua"}
execute if score game server matches 1.. run team modify 203player_creative prefix {"text": "⭐", "color": "aqua"}
execute if score game server matches 1.. run team modify 303player_spectator prefix {"text": "☆", "color": "aqua"}

execute if score game server matches 1.. run team modify 302special_spectator prefix {"text": "☠", "color": "red"}
execute if score game server matches 1..5 run team modify 002special color blue
execute if score game server matches 1..5 run team modify 012special_alert color blue
execute if score game server matches 1..5 run team modify 022special_alert color blue
execute if score game server matches 1..5 run team modify 102special_safezone prefix {"text": "⭐", "color": "blue"}
execute if score game server matches 1..5 run team modify 202special_creative prefix {"text": "⭐", "color": "blue"}
execute if score game server matches 6 run team modify 002special color dark_purple
execute if score game server matches 6 run team modify 012special_alert color dark_purple
execute if score game server matches 6 run team modify 022special_alert color dark_purple
execute if score game server matches 6 run team modify 102special_safezone prefix {"text": "⭐", "color": "dark_purple"}
execute if score game server matches 6 run team modify 202special_creative prefix {"text": "⭐", "color": "dark_purple"}
execute if score game server matches 7.. run team modify 002special color blue
execute if score game server matches 7.. run team modify 012special_alert color blue
execute if score game server matches 7.. run team modify 022special_alert color blue
execute if score game server matches 7.. run team modify 102special_safezone prefix {"text": "⭐", "color": "blue"}
execute if score game server matches 7.. run team modify 202special_creative prefix {"text": "⭐", "color": "blue"}


execute unless score game server matches 1.. run team modify 013player_glow color gray
execute unless score game server matches 1.. run team modify 003player color gray
execute unless score game server matches 1.. run team modify 103player_safezone prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 203player_creative prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 303player_spectator prefix {"text": "☆", "color": "gray"}
execute unless score game server matches 1.. run team modify 002special color gray
execute unless score game server matches 1.. run team modify 102special_safezone prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 202special_creative prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 302special_spectator prefix {"text": "☆", "color": "gray"}
execute unless score game server matches 1.. run team modify 001tagger color gray
execute unless score game server matches 1.. run team modify 011tagger color gray
execute unless score game server matches 1.. run team modify 021tagger color gray
execute unless score game server matches 1.. run team modify 001tagger_crouch color gray
execute unless score game server matches 1.. run team modify 011tagger_crouch color gray
execute unless score game server matches 1.. run team modify 021tagger_crouch suffix ""
execute unless score game server matches 1.. run team modify 001tagger_crouch suffix ""
execute unless score game server matches 1.. run team modify 011tagger_crouch suffix ""
execute unless score game server matches 1.. run team modify 021tagger_crouch suffix ""
execute unless score game server matches 1.. run team modify 101tagger_safezone prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 201tagger_creative prefix {"text": "⭐", "color": "gray"}
execute unless score game server matches 1.. run team modify 301tagger_spectator prefix {"text": "☆", "color": "gray"}

execute if score game server matches 1 run team modify 001tagger color gold
execute if score game server matches 1 run team modify 011tagger color yellow
execute if score game server matches 1 run team modify 021tagger color white
execute if score game server matches 1 run team modify 001tagger_crouch color gold
execute if score game server matches 1 run team modify 011tagger_crouch color yellow
execute if score game server matches 1 run team modify 021tagger_crouch color white
execute if score game server matches 1 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 1 run team modify 201tagger_creative prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 1 run team modify 301tagger_spectator prefix {"text": "☆", "color": "gold"}

execute if score game server matches 2 run team modify 001tagger color dark_green
execute if score game server matches 2 run team modify 011tagger color green
execute if score game server matches 2 run team modify 021tagger color white
execute if score game server matches 2 run team modify 001tagger_crouch color dark_green
execute if score game server matches 2 run team modify 011tagger_crouch color green
execute if score game server matches 2 run team modify 021tagger_crouch color white
execute if score game server matches 2 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "dark_green"}
execute if score game server matches 2 run team modify 201tagger_creative prefix {"text": "⭐", "color": "dark_green"}
execute if score game server matches 2 run team modify 301tagger_spectator prefix {"text": "☆", "color": "dark_green"}

execute if score game server matches 3 run team modify 001tagger color red
execute if score game server matches 3 run team modify 011tagger color light_purple
execute if score game server matches 3 run team modify 021tagger color white
execute if score game server matches 3 run team modify 001tagger_crouch color red
execute if score game server matches 3 run team modify 011tagger_crouch color light_purple
execute if score game server matches 3 run team modify 021tagger_crouch color white
execute if score game server matches 3 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "red"}
execute if score game server matches 3 run team modify 201tagger_creative prefix {"text": "⭐", "color": "red"}
execute if score game server matches 3 run team modify 301tagger_spectator prefix {"text": "☆", "color": "red"}

execute if score game server matches 4 run team modify 001tagger color yellow
execute if score game server matches 4 run team modify 011tagger color yellow
execute if score game server matches 4 run team modify 021tagger color white
execute if score game server matches 4 run team modify 001tagger_crouch color yellow
execute if score game server matches 4 run team modify 011tagger_crouch color yellow
execute if score game server matches 4 run team modify 021tagger_crouch color white
execute if score game server matches 4 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "yellow"}
execute if score game server matches 4 run team modify 201tagger_creative prefix {"text": "⭐", "color": "yellow"}
execute if score game server matches 4 run team modify 301tagger_spectator prefix {"text": "☆", "color": "yellow"}

execute if score game server matches 5 run team modify 001tagger color gold
execute if score game server matches 5 run team modify 011tagger color yellow
execute if score game server matches 5 run team modify 021tagger color white
execute if score game server matches 5 run team modify 001tagger_crouch color gold
execute if score game server matches 5 run team modify 011tagger_crouch color yellow
execute if score game server matches 5 run team modify 021tagger_crouch color white
execute if score game server matches 5 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 5 run team modify 201tagger_creative prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 5 run team modify 301tagger_spectator prefix {"text": "☆", "color": "gold"}

execute if score game server matches 6 run team modify 001tagger color dark_green
execute if score game server matches 6 run team modify 011tagger color green
execute if score game server matches 6 run team modify 021tagger color white
execute if score game server matches 6 run team modify 001tagger_crouch color dark_green
execute if score game server matches 6 run team modify 011tagger_crouch color green
execute if score game server matches 6 run team modify 021tagger_crouch color white
execute if score game server matches 6 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "dark_green"}
execute if score game server matches 6 run team modify 201tagger_creative prefix {"text": "⭐", "color": "dark_green"}
execute if score game server matches 6 run team modify 301tagger_spectator prefix {"text": "☆", "color": "dark_green"}

execute if score game server matches 7 run team modify 001tagger color gold
execute if score game server matches 7 run team modify 011tagger color yellow
execute if score game server matches 7 run team modify 021tagger color white
execute if score game server matches 7 run team modify 001tagger_crouch color gold
execute if score game server matches 7 run team modify 011tagger_crouch color yellow
execute if score game server matches 7 run team modify 021tagger_crouch color white
execute if score game server matches 7 run team modify 101tagger_safezone prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 7 run team modify 201tagger_creative prefix {"text": "⭐", "color": "gold"}
execute if score game server matches 7 run team modify 301tagger_spectator prefix {"text": "☆", "color": "gold"}


execute as @a[scores = {hit_detect.taker = 1..}] unless entity @a[scores = {hit_detect.giver = 1..}] run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " got hit by environment or an unknown player"]
execute as @a[scores = {hit_detect.taker = 1..}] unless entity @a[scores = {hit_detect.giver = 1..}] run scoreboard players set @s hit_detect.taker 0
execute as @a[scores = {hit_detect.giver = 1..}] at @s run function tag:tagging/hit_detected
execute as @a[tag = tagger] unless score @s stat.tagger_time matches 0.. at @s run function tag:tagging/tag_give/generic


execute as @a[tag = dead, gamemode =!creative, tag =!safezone] at @s run function tag:misc/death
execute as @a[tag = dead, tag = safezone] at @s run tag @s remove dead
execute as @a[tag = dead, gamemode = creative] at @s run tag @s remove dead

execute as @a at @s run function tag:tagging/decoration




# safezone states
# -1 = cannot enter     can exit
#  0 = can enter        can exit
#  1 = can enter        cannot exit
execute as @a unless score @s safezone_state matches -1..1 run scoreboard players set @s safezone_state 0

execute as @a[tag =!safezone, gamemode =!spectator] at @s if score @s safezone_state matches 0..1 if block ~ ~ ~ cave_air run function tag:tagging/go_in_safezone
execute as @a[tag =!safezone, gamemode =!spectator] at @s if score @s safezone_state matches 0..1 if block ~ ~1 ~ cave_air run function tag:tagging/go_in_safezone

execute as @a[tag = safezone] at @s if block ~ ~ ~ cave_air run function tag:tagging/in_safezone
execute as @a[tag = safezone] at @s if block ~ ~1 ~ cave_air run function tag:tagging/in_safezone

execute as @a[tag = safezone] at @s if score @s safezone_state matches -1..0 unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function tag:tagging/out_of_safezone
execute as @a[tag = safezone, gamemode = spectator] at @s run function tag:tagging/out_of_safezone


execute as @a[gamemode = !spectator] at @s unless score @s effect.strong_levitation matches 10.. if block ~ ~-1 ~ beacon run function tag:misc/beacons


execute as @a[scores = {anim.death = ..-2}] at @s run function tag:misc/spawn


execute as @a at @s run function tag:misc/stats
execute as @a at @s run function tag:misc/stopmusic
execute as @a at @s run function tag:tp_back/stand_to_player_check
execute as @a at @s run function tag:tp_back/player_to_stand_check
function tag:misc/player_sidebar
function tag:tp_back/create_stands

function tag:map_specific/lt_playground
execute as @a run function tag:misc/screens
# execute as @a at @s run function tag:misc/anticheat

item replace entity @a[gamemode = adventure] player.cursor with air
execute as @a run attribute @s attack_speed base set 1000000
effect give @a haste infinite 0 true

scoreboard players set @a is_sneaking 0
execute as @a at @s if block ~ ~ ~ cauldron unless score @s effect.invisibility matches 1.. run scoreboard players set @s effect.invisibility 1

execute as @a unless score @s tp.id matches 1..16 run function tag:tp_back/get_id


# events
function tag:events/glowing




execute as @e[type = ender_pearl] run team join pearl @s
execute as @e[type = ender_pearl] run data merge entity @s {Glowing: 1b, Item: {components:{"custom_model_data":0}}}
execute as @e[type = ender_pearl] at @s run particle glow ~ ~.1 ~ .1 .1 .1 .01 5 force



# items
execute as @a[gamemode =!adventure] at @s run clear @s *[custom_data={game: 1}]
execute as @a[gamemode =!adventure] at @s run clear @s *[custom_data={game: 2}]
execute as @a[gamemode =!adventure] at @s run clear @s *[custom_data={game: 3}]

execute as @a[scores={ab.use=1..}] if score @s effect.downed matches 1.. run scoreboard players set @s ab.use 0
execute as @a[scores={ab.use=1..}] if score @s effect.freeze matches 1.. run scoreboard players set @s ab.use 0
execute as @a[scores={ab.use=1..}] if entity @s[tag = safezone] run scoreboard players set @s ab.use 0
execute as @a[scores={ab.use=1..}, tag=dead] run scoreboard players set @s ab.use 0
#execute as @a[scores={ab.cd=1..}, tag=dead] run scoreboard players set @s ab.cd 0


execute as @a[scores={ab.current=1}] at @s run function tag:abilities/active/1
execute as @a[scores={ab.current=2}] at @s run function tag:abilities/active/2
execute as @a[scores={ab.current=3}] at @s run function tag:abilities/active/3
execute as @a[scores={ab.current=4}] at @s run function tag:abilities/active/4
execute as @a[scores={ab.current=5}] at @s run function tag:abilities/active/5
execute as @a[scores={ab.current=6}] at @s run function tag:abilities/active/6
execute as @a[scores={ab.current=7}] at @s run function tag:abilities/active/7

execute as @a[scores={pa.current=1}] at @s run function tag:abilities/passive/1
execute as @a[scores={pa.current=2}] at @s run function tag:abilities/passive/2
execute as @a[scores={pa.current=3}] at @s run function tag:abilities/passive/3
execute as @a[scores={pa.current=4}] at @s run function tag:abilities/passive/4
execute as @a[scores={pa.current=5}] at @s run function tag:abilities/passive/5
execute as @a[scores={pa.current=6}] at @s run function tag:abilities/passive/6
execute as @a[scores={pa.current=7}] at @s run function tag:abilities/passive/7
execute as @a[scores={pa.current=8}] at @s run function tag:abilities/passive/8
execute as @a[scores={pa.current=9}] at @s run function tag:abilities/passive/9


execute as @a unless score @s menu matches 0.. run scoreboard players set @s menu 0
execute as @a[tag =!safezone] if score @s menu matches 1.. run clear @s warped_fungus_on_a_stick
execute as @a[tag =!safezone] if score @s menu matches 1.. run scoreboard players set @s menu 0
#execute as @a if score @s menu matches 0 run clear @s warped_fungus_on_a_stick[!custom_data={menu: 1}]

execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/ender_pearl
execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/ability
execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/goat_horn
execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/passive
execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/effect
execute as @a[gamemode = adventure, scores = {menu = 0}] at @s run function tag:items/tagger_stick

execute as @a[gamemode = adventure] at @s run function tag:items/menu/main


execute as @a[gamemode = adventure] at @s run function tag:tagging/decoration_screens

execute as @a[gamemode =!adventure, tag = normal_player_decoration] at @s run function tag:items/ender_pearl
execute as @a[gamemode =!adventure, tag = normal_player_decoration] at @s run function tag:items/ability
execute as @a[gamemode =!adventure, tag = normal_player_decoration] at @s run function tag:items/effect
execute as @a[gamemode =!adventure, tag = normal_player_decoration] at @s run function tag:tagging/decoration_screens

execute as @a[scores={xp.recieve=1..}] at @s run function tag:points_xp/animations/xp_recieve
execute as @a[scores={xp.recieve=..-1}] at @s run function tag:points_xp/animations/xp_recieve

execute as @a[scores={points.reason.trigger=1..}] at @s run function tag:points_xp/gaining_reasons
execute as @a[scores={points.reason.trigger=..-1}] at @s run function tag:points_xp/gaining_reasons

execute as @a[scores={points.recieve=1..}] run function tag:points_xp/animations/points_recieve
execute as @a[scores={points.recieve=..-1}] run function tag:points_xp/animations/points_recieve



execute as @a[scores = {effect.glowing = 0..}, gamemode = adventure] at @s run function tag:effects/glowing
execute as @a[scores = {effect.strong_levitation = 0..}] at @s run function tag:effects/strong_levitation
execute as @a[scores = {effect.freeze = 0..}, gamemode = adventure] at @s run function tag:effects/freeze
execute as @a[scores = {effect.speed = 0..}, gamemode = adventure] at @s run function tag:effects/speed
execute as @a[scores = {effect.invisibility = 0..}, gamemode = adventure] at @s run function tag:effects/invisibility
execute as @a[scores = {effect.downed = -30..}, gamemode = adventure] at @s run function tag:effects/downed



# variables after functions
execute store result score playercount_old server if entity @a
execute store result score taggers_old server if entity @a[tag=tagger]



# temp
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players set @s anim.death -11
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players reset @s fall
# execute as @a at @s if block ~ ~-.1 ~ sandstone unless score @s anim.death matches -200.. run tag @s[gamemode=adventure] add dead

# item replace entity @a[gamemode = adventure] container.2 with minecraft:ender_pearl[minecraft:use_cooldown={seconds:15, cooldown_group: "ender_pearl"}, minecraft:use_remainder={id: "heart_of_the_sea"}]