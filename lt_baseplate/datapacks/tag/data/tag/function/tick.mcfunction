# generic stuff
gamemode adventure @a[gamemode = survival]
recipe give @a *
#execute as @a unless score @s points.best matches -2147483648..2147483647 run scoreboard players add @s points.best 0
execute as @a if score @s points > @s points.best run scoreboard players operation @s points.best = @s points


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



execute if score taggers-percent server < expected-taggers-percent server if score game server matches 1..6 unless score tag.random_counter server matches -30.. unless score restart server matches 0..400 unless score kill_timer server matches -1..0 if entity @a[tag=!tagger, gamemode=adventure] if score playercount server matches 2.. run scoreboard players add no_taggers_time server 1
execute if score no_taggers_time server matches 1.. unless score taggers-percent server < expected-taggers-percent server run scoreboard players set no_taggers_time server 0
execute if score no_taggers_time server matches 1.. unless score game server matches 1..6 run scoreboard players set no_taggers_time server 0
execute if score no_taggers_time server matches 1.. if score tag.random_counter server matches -30.. run scoreboard players reset no_taggers_time server
execute if score no_taggers_time server matches 1.. if score restart server matches 0..400 run scoreboard players set no_taggers_time server 0
execute if score no_taggers_time server matches 1.. if score kill_timer server matches -1..0 run scoreboard players set no_taggers_time server 0
execute if score no_taggers_time server matches 1.. unless entity @a[tag=!tagger, gamemode=adventure] run scoreboard players set no_taggers_time server 0
execute if score no_taggers_time server matches 1.. unless score playercount server matches 2.. run scoreboard players set no_taggers_time server 0

execute if score no_taggers_time server matches 1 run tellraw Lostya "Not enough taggers! I'm going to select a new one in 15 seconds if no tagger shows up (only you can see this message)"
execute if score no_taggers_time server matches 300.. run function tag:-/tag_randomize_add

execute if score no_taggers_time server matches 0 run tellraw Lostya "Aborted (only you can see this message)"
execute if score no_taggers_time server matches 0 run scoreboard players reset no_taggers_time server



execute unless score game server matches 4 if entity @a[tag=tagger, tag=!safezone] if entity @a[tag=!tagger, tag=!safezone] if score game server matches 1.. if score generic server matches 0 as @a[tag=!tagger, tag=!dead, tag=!safezone] unless score @s effect.downed matches 1.. run scoreboard players add @s points.recieve 1
execute if score game server matches 4 if entity @a[tag=tagger, tag=!safezone] if entity @a[tag=!tagger, tag=!safezone] if score game server matches 1.. if score generic server matches 0 as @a[tag= tagger, tag=!dead, tag=!safezone] unless score @s effect.downed matches 1.. run scoreboard players add @s points.recieve 1
execute if score game server matches 4 if entity @a[tag=tagger, tag=!safezone] if entity @a[tag=!tagger, tag=!safezone] if score game server matches 1.. if score generic server matches 10 as @a[tag= tagger, tag=!dead, tag=!safezone] unless score @s effect.downed matches 1.. run scoreboard players add @s points.recieve 1


# join and leave routine
execute as @a unless score @s joined matches 0 at @s run function tag:misc/join_routine
execute as @a unless score @s joined matches 0 at @s run scoreboard players set @s joined 0

execute as @a unless score @s game_count = $server game_count run scoreboard players operation @s game_count = $server game_count

execute if score playercount_old server > playercount server run function tag:misc/update_player_list


execute as @a[scores={tp.id=0}] store result score @s tp.id run function tag:tp_back/get_id {scoreboard: tp.id}
execute as @a at @s run function tag:misc/bhop



# abilities
execute as @a[scores={ab.current=1}] at @s run function tag:abilities/active/1
execute as @a[scores={ab.current=2}] at @s run function tag:abilities/active/2
execute as @a[scores={ab.current=3}] at @s run function tag:abilities/active/3
execute as @a[scores={ab.current=4}] at @s run function tag:abilities/active/4
execute as @a[scores={ab.current=5}] at @s run function tag:abilities/active/5
execute as @a[scores={ab.current=6}] at @s run function tag:abilities/active/6
execute as @a[scores={ab.current=7}] at @s run function tag:abilities/active/7
execute as @a[scores={ab.current=8}] at @s run function tag:abilities/active/8
execute as @a[scores={ab.current=9}] at @s run function tag:abilities/active/9
execute as @a[scores={ab.current=10}] at @s run function tag:abilities/active/10
execute as @a[scores={ab.current=11}] at @s run function tag:abilities/active/11
execute as @a[scores={ab.current=12}] at @s run function tag:abilities/active/12

execute as @a[scores={pa.current=1}] at @s run function tag:abilities/passive/1
execute as @a[scores={pa.current=2}] at @s run function tag:abilities/passive/2
execute as @a[scores={pa.current=3}] at @s run function tag:abilities/passive/3
execute as @a[scores={pa.current=4}] at @s run function tag:abilities/passive/4
execute as @a[scores={pa.current=5}] at @s run function tag:abilities/passive/5
execute as @a[scores={pa.current=6}] at @s run function tag:abilities/passive/6
execute as @a[scores={pa.current=7}] at @s run function tag:abilities/passive/7
execute as @a[scores={pa.current=8}] at @s run function tag:abilities/passive/8
execute as @a[scores={pa.current=9}] at @s run function tag:abilities/passive/9
execute as @a[scores={pa.current=10}] at @s run function tag:abilities/passive/10
execute as @a[scores={pa.current=11}] at @s run function tag:abilities/passive/11
execute as @a[scores={pa.current=12}] at @s run function tag:abilities/passive/12



execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..32] if score game server matches 1.. unless score game server matches 4 run scoreboard players add @s tagger_heartbeat 1
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..32] unless score game server matches 1.. run scoreboard players reset @s tagger_heartbeat
scoreboard players set @a[scores={tagger_heartbeat=61..}] tagger_heartbeat 1


execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=24..32] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..24] if score game server matches 1.. if score @s tagger_heartbeat matches 1 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=24..32] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..24] if score game server matches 1.. if score @s tagger_heartbeat matches 1 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .2 1 .2
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=24..32] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..24] if score game server matches 1.. if score @s tagger_heartbeat matches 8 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .2 1 .2


execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 1 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 1 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .4 1 .4
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 6 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .4 1 .4

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 31 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 31 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .4 1 .4
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=16..24] unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 36 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .4 1 .4


execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 1 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 1 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 3 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 11 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 11 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 13 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 21 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 21 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 23 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 31 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 31 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 33 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 41 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 41 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..16] if score game server matches 1.. if score @s tagger_heartbeat matches 43 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 51 run scoreboard players set @s points.reason.trigger 5
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 51 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] if score game server matches 1.. if score @s tagger_heartbeat matches 53 unless score @s effect.downed matches 1.. run playsound minecraft:block.note_block.basedrum player @s ~ ~ ~ .6 1 .6


execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] run tag @s add close_to_tagger

execute as @a[gamemode=!adventure, tag=!normal_player_decoration] if score game server matches 1.. run tag @s remove close_to_tagger
execute as @a[tag=tagger] run tag @s remove close_to_tagger
execute as @a[tag=safezone] run tag @s remove close_to_tagger
execute unless score game server matches 1.. run tag @a remove close_to_tagger

execute as @a[tag=tagger] run tag @s remove close_to_tagger


execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, tag=close_to_tagger] at @s unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..52] run scoreboard players add @s escape_timer 1
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, tag=close_to_tagger] at @s unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..52] run tag @s remove close_to_tagger

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, scores={escape_timer=1..}] at @s unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..40] run scoreboard players add @s escape_timer 1

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, scores={escape_timer=40..}] at @s unless score game server matches 4 run scoreboard players set @s points.reason.trigger -1
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, scores={escape_timer=40..}] at @s run scoreboard players reset @s escape_timer

execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, scores={escape_timer=1..}] at @s if entity @a[tag=tagger, gamemode=adventure, tag=!safezone, distance=..8] run scoreboard players reset @s escape_timer
execute as @a[tag=!tagger, gamemode=adventure, tag=!safezone, tag=!special, scores={escape_timer=1..}] at @s unless entity @a[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players reset @s escape_timer



execute as @a[nbt={OnGround:1b}, scores={stat.speed=150..200}, tag=!dashed, gamemode=adventure] unless score @s fall_distance matches 500.. unless score @s stat.vertical_speed matches ..-50 run scoreboard players set @s points.reason.trigger 4
execute as @a[nbt={OnGround:1b}, scores={stat.speed=150..200}, tag=!dashed, gamemode=adventure] unless score @s fall_distance matches 500.. unless score @s stat.vertical_speed matches ..-50 run tag @s add dashed

execute as @a[scores={stat.speed=..120}, tag=dashed] run tag @s remove dashed



execute as @a[nbt={OnGround:0b}, scores={stat.horizontal_speed=200..}, tag=!airdashed, gamemode=adventure] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air run scoreboard players set @s points.reason.trigger 7
execute as @a[nbt={OnGround:0b}, scores={stat.horizontal_speed=200..}, tag=!airdashed, gamemode=adventure] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air run tag @s add airdashed

execute as @a[scores={stat.horizontal_speed=..70}, tag=airdashed] run tag @s remove airdashed



execute as @a[scores={fall_distance=3700..}] at @s unless entity @s[tag=no_points] run scoreboard players set @s points.reason.trigger -5
execute as @a[scores={fall_distance=3000..}] at @s unless score @s effect.downed matches 1.. unless score @s is_sneaking matches 1.. run damage @s .01 player_attack by @s
execute as @a[scores={fall_distance=3000..}] at @s unless score @s effect.downed matches 1.. if score @s is_sneaking matches 1.. run damage @s .01 generic
execute as @a[scores={fall_distance=3000..}] at @s run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~
execute as @a[scores={fall_distance=3000..}] at @s run particle cloud ~ ~1 ~ .3 .5 .3 .1 20 force @a
execute as @a[scores={fall_distance=700..2999}] at @s unless score @s effect.downed matches 1.. unless score @s is_sneaking matches 1.. run damage @s .01 generic
execute as @a[scores={fall_distance=1..}] at @s run scoreboard players reset @s fall_distance



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


execute if score game server matches 7 if score kill_timer server matches 1.. run scoreboard players set @a effect.glowing 1
execute if score game server matches 7 if score kill_timer server matches 1.. run scoreboard players set e.glowing server -2000


execute unless score game server matches 7 if score kill_timer server matches 1600 run scoreboard players set e.glowing server -3200
execute unless score game server matches 7 if score kill_timer server matches 1400 run playsound tag:round.intro master @a ~ ~ ~ .1 1 .1

execute unless score game server matches 7 if score kill_timer server matches 1200 run playsound tag:round.warn master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 1200 run playsound tag:round.60s master @a ~ ~ ~ .1 1 .1
execute unless score game server matches 7 if score kill_timer server matches ..1200 run scoreboard players remove @a[scores={ab.cd=2..}] ab.cd 1
execute unless score game server matches 7 if score kill_timer server matches ..1200 run scoreboard players remove @a[scores={effect.downed=1..}] effect.downed 1
execute unless score game server matches 7 if score kill_timer server matches 1200 run title @a times 0 20 10
execute unless score game server matches 7 if score kill_timer server matches 1200 run title @a subtitle {"translate": "title.round.60s.sub", "color": "gray"}
execute unless score game server matches 7 if score kill_timer server matches 1200 run title @a title {"translate": "title.round.60s", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 1199 run title @a title {"translate": "title.round.60s", "color": "#FFDDFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 1198 run title @a title {"translate": "title.round.60s", "color": "#FFBBFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 1197 run title @a title {"translate": "title.round.60s", "color": "#FF99FF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 1196 run title @a title {"translate": "title.round.60s", "color": "#FF77FF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 1195 run title @a title {"translate": "title.round.60s", "color": "#FF55FF", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 1165 run title @a times 10 30 20
execute unless score game server matches 7 unless score game server matches 5..6 if score kill_timer server matches 1165 run title @a subtitle {"translate": "title.round.60s.effect_sub", "color": "gold"}
execute unless score game server matches 7 if score game server matches 5..6 if score kill_timer server matches 1165 run title @a subtitle {"translate": "title.round.60s.effect_sub.freeze", "color": "gold"}
execute unless score game server matches 7 if score kill_timer server matches 1165 run title @a title {"translate": "title.round.60s.effect", "color": "yellow"}



execute unless score game server matches 7 if score kill_timer server matches 600 run stopsound @a * tag:round.60s
execute unless score game server matches 7 if score kill_timer server matches 600 run playsound tag:round.warn master @a ~ ~ ~ .3 1.2 .3
execute unless score game server matches 7 if score kill_timer server matches 600 run playsound tag:round.30s master @a ~ ~ ~ .1 1 .1

execute unless score game server matches 7 if score kill_timer server matches ..600 run scoreboard players set e.glowing server -3500

execute unless score game server matches 7 if score kill_timer server matches 600 run title @a times 0 20 10
execute unless score game server matches 7 if score kill_timer server matches 600 run title @a subtitle {"translate": "title.round.30s.sub", "color": "gray"}
execute unless score game server matches 7 if score kill_timer server matches 600 run title @a title {"translate": "title.round.30s", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches ..600 run scoreboard players set @a effect.glowing 1
execute unless score game server matches 7 if score kill_timer server matches 599 run title @a title {"translate": "title.round.30s", "color": "#FFDDDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 598 run title @a title {"translate": "title.round.30s", "color": "#FFBBBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 597 run title @a title {"translate": "title.round.30s", "color": "#FF9999", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 596 run title @a title {"translate": "title.round.30s", "color": "#FF7777", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 595 run title @a title {"translate": "title.round.30s", "color": "#FF5555", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 565 run title @a times 10 30 20
execute unless score game server matches 7 if score kill_timer server matches 565 run title @a subtitle {"translate": "title.round.30s.effect_sub", "color": "dark_aqua"}
execute unless score game server matches 7 if score kill_timer server matches 565 run title @a title {"translate": "title.round.30s.effect", "color": "aqua"}





execute unless score game server matches 7 if score kill_timer server matches 280 run stopsound @a * tag:round.30s
execute unless score game server matches 7 if score kill_timer server matches 281 run playsound tag:round.20s master @a ~ ~ ~ .1 1 .1



execute unless score game server matches 7 if score kill_timer server matches 240 run title @a times 30 10 0
execute unless score game server matches 7 if score kill_timer server matches 240 run title @a title ""
execute unless score game server matches 7 if score kill_timer server matches 240 run title @a subtitle {"translate": "title.round.ends_in", "color": "gray"}


execute unless score game server matches 7 if score kill_timer server matches 200 run title @a clear
execute unless score game server matches 7 if score kill_timer server matches 200 run title @a times 0 10 5

execute unless score game server matches 7 if score kill_timer server matches 200 run playsound tag:round.countdown_10 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 200 run title @a title {"text": "10", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 199 run title @a title {"text": "10", "color": "#FFFFDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 198 run title @a title {"text": "10", "color": "#FFFFBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 197 run title @a title {"text": "10", "color": "#FFFF99", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 196 run title @a title {"text": "10", "color": "#FFFF77", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 195 run title @a title {"text": "10", "color": "#FFFF55", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 180 run playsound tag:round.countdown_9 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 180 run title @a title {"text": "9", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 179 run title @a title {"text": "9", "color": "#FFF7DD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 178 run title @a title {"text": "9", "color": "#FFF0BB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 177 run title @a title {"text": "9", "color": "#FFE799", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 176 run title @a title {"text": "9", "color": "#FFE077", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 175 run title @a title {"text": "9", "color": "#FFD755", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 160 run playsound tag:round.countdown_8 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 160 run title @a title {"text": "8", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 159 run title @a title {"text": "8", "color": "#FFF0DD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 158 run title @a title {"text": "8", "color": "#FFE0BB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 157 run title @a title {"text": "8", "color": "#FFD099", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 156 run title @a title {"text": "8", "color": "#FFC077", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 155 run title @a title {"text": "8", "color": "#FFB055", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 140 run playsound tag:round.countdown_7 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 140 run title @a title {"text": "7", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 139 run title @a title {"text": "7", "color": "#FFE7DD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 138 run title @a title {"text": "7", "color": "#FFDDBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 137 run title @a title {"text": "7", "color": "#FFC799", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 136 run title @a title {"text": "7", "color": "#FFBB77", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 135 run title @a title {"text": "7", "color": "#FFA755", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 120 run playsound tag:round.countdown_6 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 120 run title @a title {"text": "6", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 119 run title @a title {"text": "6", "color": "#FFEEDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 118 run title @a title {"text": "6", "color": "#FFDDBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 117 run title @a title {"text": "6", "color": "#FFCC99", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 116 run title @a title {"text": "6", "color": "#FFBB77", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 115 run title @a title {"text": "6", "color": "#FFAA55", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 100 run playsound tag:round.countdown_5 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 100 run title @a title {"text": "5", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 99 run title @a title {"text": "5", "color": "#FFE0DD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 98 run title @a title {"text": "5", "color": "#FFD0BB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 97 run title @a title {"text": "5", "color": "#FFC099", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 96 run title @a title {"text": "5", "color": "#FFB077", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 95 run title @a title {"text": "5", "color": "#FFA055", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 80 run playsound tag:round.countdown_4 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 80 run title @a title {"text": "4", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 79 run title @a title {"text": "4", "color": "#FFDFDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 78 run title @a title {"text": "4", "color": "#FFDFBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 77 run title @a title {"text": "4", "color": "#FFCF99", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 76 run title @a title {"text": "4", "color": "#FF9F77", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 75 run title @a title {"text": "4", "color": "#FF7F55", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 60 run playsound tag:round.countdown_3 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 60 run title @a title {"text": "3", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 59 run title @a title {"text": "3", "color": "#FFDDDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 58 run title @a title {"text": "3", "color": "#FFBBBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 57 run title @a title {"text": "3", "color": "#FF9999", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 56 run title @a title {"text": "3", "color": "#FF7777", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 55 run title @a title {"text": "3", "color": "#FF5555", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 40 run playsound tag:round.countdown_2 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 40 run title @a title {"text": "2", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 39 run title @a title {"text": "2", "color": "#FFDDDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 38 run title @a title {"text": "2", "color": "#FFBBBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 37 run title @a title {"text": "2", "color": "#FF9999", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 36 run title @a title {"text": "2", "color": "#FF7777", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 35 run title @a title {"text": "2", "color": "#FF5555", "bold": false}

execute unless score game server matches 7 if score kill_timer server matches 20 run playsound tag:round.countdown_1 master @a ~ ~ ~ .3 1 .3
execute unless score game server matches 7 if score kill_timer server matches 20 run title @a title {"text": "1", "color": "#FFFFFF", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 19 run title @a title {"text": "1", "color": "#FFDDDD", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 18 run title @a title {"text": "1", "color": "#FFBBBB", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 17 run title @a title {"text": "1", "color": "#FF9999", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 16 run title @a title {"text": "1", "color": "#FF7777", "bold": false}
execute unless score game server matches 7 if score kill_timer server matches 15 run title @a title {"text": "1", "color": "#FF5555", "bold": false}



execute unless score game server matches 7 if score kill_timer server matches 60 run stopsound @a * tag:round.20s
execute unless score game server matches 7 if score kill_timer server matches 60 run playsound tag:round.finale master @a ~ ~ ~ .1 1 .1

execute unless score game server matches 7 if score kill_timer server matches 0 run stopsound @a * tag:round.finale
execute unless score game server matches 7 if score kill_timer server matches 0 run playsound tag:round.outro master @a ~ ~ ~ .1 1 .1


execute if score kill_timer server matches -1 if score game_prev server matches 7 unless score adventure-mode server matches 2.. run scoreboard players set restart server 1
execute if score kill_timer server matches -1 if score game_prev server matches 7 unless score adventure-mode server matches 2.. run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] times 0 60 40
execute if score kill_timer server matches -1 if score game_prev server matches 7 unless score adventure-mode server matches 2.. run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] title {"translate": "title.round.win", "color": "green", "bold": true}
execute if score kill_timer server matches -1 if score game_prev server matches 7 unless score adventure-mode server matches 2.. run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] subtitle {"translate": "title.round.win.sub_player", "color": "gray"}
execute if score kill_timer server matches -1 if score game_prev server matches 7 run scoreboard players set @a[tag=!dead, tag=!tagger, tag=!safezone, gamemode=adventure] points.reason.trigger -4
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run scoreboard players set @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] points.reason.trigger -2
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run playsound ui.toast.challenge_complete master @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] 0 0 0 1 1 1
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] times 0 60 40
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] title {"translate": "title.round.win", "color": "green", "bold": true}
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run title @a[tag=!tagger, tag=!safezone, tag=!special, tag=!dead, gamemode=adventure] subtitle {"translate": "title.round.win.sub_player", "color": "gray"}
execute if score kill_timer server matches -1 unless score game_prev server matches 7 run scoreboard players set restart server 1
execute if score kill_timer server matches 0 unless score game server matches 4 as @a[tag=tagger] at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 .8 .5
execute if score kill_timer server matches 0 unless score game server matches 4 as @a[tag=tagger] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
execute if score kill_timer server matches 0 unless score game server matches 4 as @a[tag=tagger] at @s run particle lava ~ ~1 ~ .3 .5 .3 0 50
execute if score kill_timer server matches 0 unless score game server matches 4 as @a[tag=tagger] at @s run function tag:-/kill
execute if score kill_timer server matches 0 if score game server matches 4 as @a[tag=!tagger] at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 .8 .5
execute if score kill_timer server matches 0 if score game server matches 4 as @a[tag=!tagger] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
execute if score kill_timer server matches 0 if score game server matches 4 as @a[tag=!tagger] at @s run particle lava ~ ~1 ~ .3 .5 .3 0 50
execute if score kill_timer server matches 0 if score game server matches 4 as @a[tag=!tagger] at @s run function tag:-/kill
execute if score kill_timer server matches 0 as @a[tag=tagger] at @s run tag @s remove tagger




execute if score game server matches 4 if entity @a[scores={points=1000..}] unless score restart server matches 1.. unless score kill_timer server matches 0.. as @a run function tag:points_xp/get_xp_from_points



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
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run scoreboard players set @a[tag=tagger] points.reason.trigger -3
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run playsound ui.toast.challenge_complete master @a[tag=tagger] 0 0 0 1 1 1
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run title @a[tag=tagger] times 0 60 40
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run title @a[tag=tagger] title {"translate": "title.round.win", "color": "green", "bold": true}
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run title @a[tag=tagger] subtitle {"translate": "title.round.win.sub_tagger", "color": "gray"}
execute if score active-players server matches 2.. if score taggers server matches 1.. if score taggers server = active-players server run scoreboard players set restart server 1
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run scoreboard players set @a[tag=tagger] points.reason.trigger -3
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run playsound ui.toast.challenge_complete master @a[tag=tagger] 0 0 0 1 1 1
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run title @a[tag=tagger] times 0 60 40
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run title @a[tag=tagger] title {"translate": "title.round.win", "color": "green", "bold": true}
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run title @a[tag=tagger] subtitle {"translate": "title.round.win.sub_tagger", "color": "gray"}
execute if score active-players server matches 2.. if score specials server matches 1.. if score specials server = non-taggers server run scoreboard players set restart server 1
execute if score restart server matches 1.. run scoreboard players operation restart.s server = restart server
execute if score restart server matches 1.. run scoreboard players operation restart.s server /= 20 consts
execute if score restart server matches 1.. run scoreboard players set restart.s_reversed server 5
execute if score restart server matches 1.. run scoreboard players operation restart.s_reversed server -= restart.s server

#execute if score restart server matches 3 as @a run function tag_music:win/play
#execute if score restart server matches 3 run title @a times 0 90 10
execute if score restart server matches 1..3 run tag @a[tag=tagger] remove tagger
execute if score restart server matches 1..3 run tag @a[tag=!dead, tag=special] remove special
execute if score restart server matches 1..3 unless score game server matches 6 as @a[scores = {effect.downed=1..}] run scoreboard players set @s effect.downed 0
execute if score restart server matches 1..3 if score game server matches 6 as @a[scores = {effect.downed=1..}] run scoreboard players set @s effect.downed -1
execute if score restart server matches 3 run stopsound @a * tag:round.intro
execute if score restart server matches 3 run stopsound @a * tag:round.60s
execute if score restart server matches 3 run stopsound @a * tag:round.30s
execute if score restart server matches 3 run stopsound @a * tag:round.20s
execute if score restart server matches 3 run stopsound @a * tag:round.finale
execute if score restart server matches 3 run tellraw @a [{"text": "Game ended", "color": "yellow", "bold": true}]
execute if score restart server matches 3 as @a[tag=dead] at @s run playsound entity.wither.death master @s ~ ~ ~ 1000000 1 1
execute if score restart server matches 1..5 run title @a[tag=dead] times 0 60 40
execute if score restart server matches 3..5 run title @a[tag=dead] title [{"translate": "title.round.loss", "color": "red", "bold": true}]
execute if score restart server matches 3..5 run title @a[tag=dead] subtitle [{"translate": "title.round.loss.sub", "color": "gray"}]
execute if score restart server matches 110 as @a run function tag:misc/spawn
execute if score restart server matches 110 run scoreboard players add $server game_count 1
execute if score restart server matches 110 as @a run scoreboard players set @a safezone_state 0
execute if score restart server matches 120 run tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nNew game", "color": "yellow", "bold": true}]
execute if score adventure-mode server matches 2.. if score restart server matches 200 if score game server matches 1.. run function tag:-/tag_randomize
execute if score restart server matches 170 if score game server matches 1.. as @a run function tag:points_xp/get_xp_from_points
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

execute if score is-prod server matches 0 run function tag:misc/bossbar {color: "#056863", type: dev}
execute if score is-prod server matches 1 run function tag:misc/bossbar {color: "#7a4d06", type: prod}

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




scoreboard players remove @a[scores={gain_for_tagging_timer=1..}] gain_for_tagging_timer 1

execute as @a[scores={points.reason.trigger=1..}] at @s run function tag:points_xp/gaining_reasons
execute as @a[scores={points.reason.trigger=..-1}] at @s run function tag:points_xp/gaining_reasons




execute as @a run scoreboard players operation @s points.digit_1 = @s points
execute as @a run scoreboard players operation @s points.digit_2 = @s points
execute as @a run scoreboard players operation @s points.digit_3 = @s points
execute as @a run scoreboard players operation @s points.digit_4 = @s points
execute as @a run scoreboard players operation @s points.digit_1 /= 1000 consts
execute as @a run scoreboard players operation @s points.digit_2 /= 100 consts
execute as @a run scoreboard players operation @s points.digit_2 %= 10 consts
execute as @a run scoreboard players operation @s points.digit_3 /= 10 consts
execute as @a run scoreboard players operation @s points.digit_3 %= 10 consts
execute as @a run scoreboard players operation @s points.digit_4 %= 10 consts

execute as @a run scoreboard players operation @s points.best.digit_1 = @s points.best
execute as @a run scoreboard players operation @s points.best.digit_2 = @s points.best
execute as @a run scoreboard players operation @s points.best.digit_3 = @s points.best
execute as @a run scoreboard players operation @s points.best.digit_4 = @s points.best
execute as @a run scoreboard players operation @s points.best.digit_1 /= 1000 consts
execute as @a run scoreboard players operation @s points.best.digit_2 /= 100 consts
execute as @a run scoreboard players operation @s points.best.digit_2 %= 10 consts
execute as @a run scoreboard players operation @s points.best.digit_3 /= 10 consts
execute as @a run scoreboard players operation @s points.best.digit_3 %= 10 consts
execute as @a run scoreboard players operation @s points.best.digit_4 %= 10 consts


execute as @a[tag=!dead] unless score @s screen_effect matches 250..268 run function tag:points_xp/gaining_animations
execute as @a if score @s screen_effect matches 250..268 run scoreboard players reset @s points.reason.anim
execute as @a if score @s screen_effect matches 250..268 run scoreboard players reset @s points.reason.store
execute as @a if score @s screen_effect matches 250..268 run title @s actionbar ""

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



execute as @a if score @s screen_animation matches 1.. run scoreboard players add @s screen_animation.counter 1
execute as @a if score @s screen_animation matches 1.. run scoreboard players operation @s screen_effect = @s screen_animation
execute as @a if score @s screen_animation matches 1.. run scoreboard players operation @s screen_effect *= 1000 consts
execute as @a if score @s screen_animation matches 1.. run scoreboard players operation @s screen_effect += @s screen_animation.counter

execute as @a if score @s screen_effect matches 1001 at @s run playsound tag:events.bad_weather master @s ~ ~ ~ 1 1 1

execute as @a if score @s screen_animation.counter matches 172.. run scoreboard players reset @s screen_animation
execute as @a if score @s screen_animation.counter matches 172.. run scoreboard players reset @s screen_animation.counter




# temp
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players set @s anim.death -11
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players reset @s fall
# execute as @a at @s if block ~ ~-.1 ~ sandstone unless score @s anim.death matches -200.. run tag @s[gamemode=adventure] add dead

# item replace entity @a[gamemode = adventure] container.2 with minecraft:ender_pearl[minecraft:use_cooldown={seconds:15, cooldown_group: "ender_pearl"}, minecraft:use_remainder={id: "heart_of_the_sea"}]