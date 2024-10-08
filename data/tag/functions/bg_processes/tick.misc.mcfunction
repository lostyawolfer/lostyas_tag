execute as @a at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace respawn_anchor
clear @a respawn_anchor

execute as @a unless score @s safezone.can_open matches 0.. run scoreboard players set @s safezone.can_open 1


effect give @a instant_health infinite 5 true

recipe take @a *
gamerule doLimitedCrafting true
gamemode adventure @a[gamemode=survival]
clear @a minecraft:end_crystal
kill @e[type=minecraft:eye_of_ender]
execute as @a at @s run attribute @s minecraft:generic.attack_speed base set 99999
execute as @e[type=ender_pearl] unless score game event.current_major_event matches 2 run data merge entity @s {Glowing:1b}
team join pearl @e[type=ender_pearl]
execute as @a[tag=invincible.one_time] at @s run particle dust .5 .4 1 1 ~ ~1 ~ .3 .5 .3 0 3
execute as @a[tag=invincible.one_time] at @s if score notifanim notifanim matches 14 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5 0
execute as @a[tag=invincible.one_time] at @s if score notifanim notifanim matches 3 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5 1.5
execute as @a[tag=invincible.one_time] at @s if score notifanim notifanim matches 4 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5 1.7
execute as @a[tag=invincible.one_time] at @s if score notifanim notifanim matches 16 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5 2
execute as @a[tag=invincible.one_time] at @s if score notifanim notifanim matches 7 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5 0.8
execute as @a[tag=invincible.one_time] at @s unless score notifanim notifanim matches 3..4 unless score notifanim notifanim matches 7 unless score notifanim notifanim matches 14 unless score notifanim notifanim matches 16 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ .5
execute as @a[tag=invincible] at @s run particle dust 0 1 .5 1 ~ ~1 ~ .2 .4 .2 0 1
execute as @e[tag=frozen,type=!armor_stand] at @s run scoreboard players set @s effect.freeze 2
kill @e[type=tnt]
#kill @e[type=creeper]
#execute as TheVexlessAnimae at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
#effect give TheVexlessAnimae weakness 9999 5 true
#execute as TheVexlessAnimae at @s run tp @s @s


spawnpoint @a 3 47 -80
execute as @a[scores={d=4}] at @s run scoreboard players set @s[scores={hp=1..}] d 0
execute as @a[scores={d=3}] as @s[scores={hp=1..}] at @s run title @s title ""
execute as @a[scores={d=3}] as @s[scores={hp=1..}] at @s run title @s subtitle ""
execute as @a[scores={d=3}] at @s run scoreboard players set @s[scores={hp=1..}] d 4
execute as @a[scores={d=2}] as @s[scores={hp=1..}] at @s run attribute @s generic.max_health base set 40
execute as @a[scores={d=2}] as @s[scores={hp=1..}] unless score Lostya map matches 1..2 at @s run tp @s @e[type=armor_stand, tag=spawn, limit=1, sort=random]
execute as @a[scores={d=2}] as @s[scores={hp=1..}] if score Lostya map matches 1 at @s run tp @s @e[type=armor_stand, tag=spawn_main, limit=1, sort=random]
execute as @a[scores={d=2}] as @s[scores={hp=1..}] if score Lostya map matches 2 at @s run tp @s @e[type=armor_stand, tag=spawn_153, limit=1, sort=random]
execute as @a[scores={d=2}] as @s[scores={hp=1..}] at @s run effect give @s blindness 1 0 true
execute as @a[scores={d=2}] at @s run scoreboard players set @s[scores={hp=1..}] d 3
execute as @a[scores={d=1}] at @s run stopsound @s
execute as @a[scores={d=1}] at @s run tag @s remove safezoned
execute as @a[scores={d=1}] at @s run effect clear @s
execute as @a[scores={d=1}] at @s run playsound minecraft:death master @s
execute as @a[scores={d=1}] at @s run playsound minecraft:entity.player.hurt_freeze master @s
execute as @a[scores={d=1}] at @s run particle angry_villager ~ ~2 ~ .3 .1 .3 0 20
execute as @a[scores={d=1}] at @s run particle minecraft:small_flame ~ ~1 ~ .3 .5 .3 .1 100
execute as @a[scores={d=1}] at @s run effect give @s darkness 999999 0 true
execute as @a[scores={hp=0}] at @s run scoreboard players set @s playtime 0
execute as @a[scores={d=1}] at @s run scoreboard players set @s d 2




execute as @e[tag=!safezoned] at @s if score @s safezone.can_open matches 0 run tp @s @e[type=armor_stand, tag=spawn, limit=1, sort=nearest]
execute as @e at @s if score Lostya safezones matches 2 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 cyan_stained_glass replace moving_piston
execute as @e at @s if score Lostya safezones matches 0 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 moving_piston replace cyan_stained_glass
execute as @a[gamemode = !spectator] at @s if score @s safezone.can_open matches 1 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 moving_piston replace cyan_stained_glass
execute as @e[type=!player, tag=!corrector] at @s if score @s safezone.can_open matches 1 run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 moving_piston replace cyan_stained_glass

#execute as @e at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 barrier replace void_air
#execute as @e at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 barrier replace tinted_glass
#execute as @a[gamemode = !spectator] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 tinted_glass replace barrier




execute as @e[tag=pidorasik, nbt={OnGround:1b}] at @s run particle small_flame ~ ~.4 ~ .1 .1 .1 .025 1
execute as @e[tag=pidorasik, nbt={OnGround:1b}] at @s run particle flame ~ ~.4 ~ .1 .1 .1 .01 1

execute as @e[tag=pidorasik, nbt={OnGround:0b}] at @s run particle flame ~ ~.4 ~ .1 .1 .1 .04 2
#execute as @e[tag=pidorasik, nbt={OnGround:0b}] at @s run particle enchant ~ ~ ~ .3 0 .3 0 50
execute as @e[tag=pidorasik] at @s run attribute @s generic.armor base set 5000000
execute as @e[tag=pidorasik] at @s run data merge entity @s {Health: 5000000, Invulnerable:1b}




execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-1 ~ minecraft:structure_block run playsound ui.toast.in master @s ~ ~ ~ 100 2
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-2 ~ minecraft:structure_block run playsound ui.toast.in master @s ~ ~ ~ 100 2
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-1 ~ minecraft:structure_block run tag @s add no_saving_pos
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-2 ~ minecraft:structure_block run tag @s add no_saving_pos
execute as @a[tag=no_saving_pos] at @s unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block unless block ~ ~-1 ~ air run playsound ui.toast.out master @s ~ ~ ~ 100 2
execute as @a[tag=no_saving_pos] at @s unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block unless block ~ ~-1 ~ air run tag @s remove no_saving_pos


execute as @a at @s if block ~ ~ ~ minecraft:powder_snow_cauldron run scoreboard players set @s effect.invis 2

execute as @a at @s if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=1]
execute as @a at @s if block ~ ~-1 ~ minecraft:powder_snow_cauldron run setblock ~ ~-1 ~ minecraft:cauldron


kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:area_effect_cloud]
scoreboard players enable @a rescue



execute as @a[scores={fall=..749}] at @s run scoreboard players set @s fall 0
execute as @a[scores={fall=1000..2499}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .2 25
execute as @a[scores={fall=750..2499}, nbt={OnGround:1b}, predicate=!tag:sneaking] at @s unless block ~ ~-1 ~ beacon unless score @s effect.down matches -5.. run damage @s 1 minecraft:generic
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}, predicate=!tag:sneaking] at @s unless block ~ ~-1 ~ beacon unless score @s effect.down matches -5.. run damage @s 1 minecraft:generic by @p[tag=!tagger]
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}, predicate=tag:sneaking] at @s unless block ~ ~-1 ~ beacon unless score @s effect.down matches -5.. run damage @s 1 minecraft:generic
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .3 50
execute as @a[scores={fall=1400..}] at @s if entity @a[distance=..5, scores={fall=..1399}, nbt={OnGround:1b}] run scoreboard players set @s[tag=!tagger,tag=!afk,tag=!safezoned,gamemode=adventure] playtime.title.trigger 7
execute as @a[scores={fall=1400..}] at @s if entity @a[distance=..5, scores={fall=..1399}, nbt={OnGround:1b}] run scoreboard players add @s[tag=!tagger,tag=!afk,tag=!safezoned,gamemode=adventure] playtime 5
execute as @a[scores={fall=2500..}] at @s run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~
execute as @a[scores={fall=2500..}] at @s run damage @a[distance=..5, scores={fall=..2499}, limit = 1] 1 minecraft:generic by @s
execute as @a[scores={fall=2500..}] at @s run scoreboard players set @a[distance=..3, scores={fall=..1399}, nbt={OnGround:1b}] effect.throw 2
execute as @a[scores={fall=750..}, nbt = {OnGround: 1b}] at @s run scoreboard players set @s fall 0


bossbar set minecraft:notif.afk players @a[tag=afk]


execute as @a if score @s nbs_runsong matches 0.. run function tag:bg_processes/stopmusic


clear @a[name = !"Lostya"] command_block
clear @a[name = !"Lostya"] chain_command_block
clear @a[name = !"Lostya"] repeating_command_block
clear @a[name = !"Lostya"] elytra
clear @a[name = !"Lostya"] trident
weather clear



execute store result score totalplayercount event if entity @a
execute if score totalplayercount event < totalplayercount.old event run function tag:misc/reset_sidebar
execute if score totalplayercount event < totalplayercount.old event as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 99999 2
execute if score totalplayercount event < totalplayercount.old event as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 99999 1.5
execute store result score totalplayercount.old event if entity @a



execute as @e[type=item, nbt={Age:0s, PickupDelay:40s}] run data merge entity @s {Age:5960, PickupDelay:0}

#gamemode adventure @a[name = !"Lostya"]



execute as @a[scores={afk.timer=1200..}, tag=!afk] run tellraw @s [{"translate":"chat.afk.enter","color":"yellow"}]
tag @a[scores={afk.timer=1200..}] add afk
scoreboard players set @a[scores={afk.timer=1200..}] afk.timer 0
execute as @a[tag=afk, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle dust 1 1 0 1 ~ ~1 ~ .2 .4 .2 0 3 normal @a[distance=.1..]

execute as @a[scores={afk.timer=..0}, tag=afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 2
execute as @a[scores={afk.timer=..-1}, tag=afk] run scoreboard players add @s[scores={stat.speed2=0..9}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=afk] run scoreboard players set @s afk.timer 0

execute as @a[scores={afk.timer=..-30}, tag=afk] run tellraw @s [{"translate":"chat.afk.exit","color":"yellow"}]
tag @a[scores={afk.timer=..-30}] remove afk
scoreboard players set @a[scores={afk.timer=..-30}] afk.timer 0





#execute as @a run scoreboard players operation @s stat.speed2 *= 20 consts
#execute as @a run scoreboard players operation @s stat.speed2 /= 100 consts



execute as @e[type=ender_pearl] at @s unless score game event.current_major_event matches 2 run particle glow ~ ~ ~ .1 .1 .1 .075 5


#execute as @a[scores={stat.speed.prev=170..}] if score @s stat.speed2 matches 1..75 run damage @s 0.0001

execute as @a[nbt={OnGround:0b}, scores={stat.speed2=150..}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .1 .4 .1 1 25
execute as @a[nbt={OnGround:0b}, scores={stat.speed2=250..}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .2 .4 .2 1 25
execute as @a[nbt={OnGround:0b}, scores={stat.speed2=370..}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 25
execute as @a[nbt={OnGround:0b}, scores={stat.speed2=500..}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 25

execute as @a[nbt={OnGround:0b}, scores={stat.speed2=175..300}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 50
execute as @a[nbt={OnGround:0b}, scores={stat.speed2=300..}, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 100

execute as @a[nbt={OnGround:0b}, scores={stat.speed2=175..300}, gamemode=adventure] if score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 5
execute as @a[nbt={OnGround:0b}, scores={stat.speed2=300..}, gamemode=adventure] if score @s effect.invis matches 1.. at @s run particle minecraft:white_ash ~ ~1 ~ .3 .5 .3 1 10




execute as @a[gamemode=adventure, tag=!safezoned] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..30] run scoreboard players add @s near_heartbeat 1
execute as @a[gamemode=adventure, tag=!safezoned] at @s unless entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..30] run scoreboard players reset @s near_heartbeat


execute as @a[scores={near_heartbeat=10}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..30] run function tag:tp_back/stopmusic
execute as @a[scores={near_heartbeat=16}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..30] run function tag:tp_back/stopmusic

execute as @a[scores={near_heartbeat=10}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=21..30] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=16}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=21..30] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=50..}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=21..30] run scoreboard players set @s near_heartbeat 0

execute as @a[scores={near_heartbeat=10}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=11..20] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=16}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=11..20] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=30..}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=11..20] run scoreboard players set @s near_heartbeat 0

execute as @a[scores={near_heartbeat=5}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=6..10] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=8}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=6..10] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=20..}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=6..10] run scoreboard players set @s near_heartbeat 0

execute as @a[scores={near_heartbeat=5}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..5] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=7}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..5] run playsound block.note_block.basedrum ambient @s ~ ~ ~
execute as @a[scores={near_heartbeat=10..}, tag=!tagger, tag=!afk, tag=!safezoned, gamemode=adventure] at @s if entity @a[tag=tagger, tag=!safezoned, tag=!afk, distance=..5] run scoreboard players set @s near_heartbeat 0









scoreboard players remove timer consts 1
execute store result bossbar minecraft:a_version value run scoreboard players get timer consts


execute if score timer_mode consts matches -3 run scoreboard players set timer consts 344
execute if score timer_mode consts matches -3 as @a at @s run tp @s @e[type=armor_stand, tag=spawn, limit=1, sort=random, distance=0..]
execute if score timer_mode consts matches -2 if score timer consts matches 340 as @a at @s run title @a times 0 60 40 
execute if score timer_mode consts matches -2 if score timer consts matches 340 as @a at @s run title @a title {"text":"15 секунд","color":"green"} 
execute if score timer_mode consts matches -2 if score timer consts matches 340 as @a at @s run title @a subtitle {"text":"для подготовки пока вода заморожен","color":"gray"} 
execute if score timer_mode consts matches -3 run scoreboard players set timer_mode consts -2



execute if score timer consts matches 314 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 314 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 314 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.75
execute if score timer consts matches 314 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.75
#execute if score timer consts matches 314 if score timer_mode consts matches -2 run bossbar set a_version style notched_6

#execute if score timer consts matches 304 if score timer_mode consts matches -2 run bossbar set a_version style progress

execute if score timer consts matches 294 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 294 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 294 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.8
execute if score timer consts matches 294 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.8

execute if score timer consts matches 274 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 274 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 274 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.85
execute if score timer consts matches 274 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.85

execute if score timer consts matches 254 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 254 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 254 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.9
execute if score timer consts matches 254 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.9

execute if score timer consts matches 234 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 234 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 234 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.95
execute if score timer consts matches 234 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 0.95

execute if score timer consts matches 214 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 214 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 214 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1
execute if score timer consts matches 214 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1

execute if score timer consts matches 194 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 194 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 194 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.05
execute if score timer consts matches 194 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.05

execute if score timer consts matches 174 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 174 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 174 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.1
execute if score timer consts matches 174 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.1

execute if score timer consts matches 154 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 154 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 154 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.175
execute if score timer consts matches 154 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.175

execute if score timer consts matches 134 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 134 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 134 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.25
execute if score timer consts matches 134 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.25

execute if score timer consts matches 114 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 114 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 114 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.33
execute if score timer consts matches 114 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.33

execute if score timer consts matches 94 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 94 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 94 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.4
execute if score timer consts matches 94 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.4

execute if score timer consts matches 74 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 74 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 74 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.47
execute if score timer consts matches 74 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.47

execute if score timer consts matches 54 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 54 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 54 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.54
execute if score timer consts matches 54 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.54

execute if score timer consts matches 34 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 34 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_counter master @s ~ ~ ~ 20 1
execute if score timer consts matches 34 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.63
execute if score timer consts matches 34 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_note master @s ~ ~ ~ 20 1.63

execute if score timer consts matches 14 if score timer_mode consts matches -2 as @a at @s run playsound round.starting_clock_start master @s ~ ~ ~ 20 1





execute if score timer consts matches 13.. if score timer_mode consts matches -2 run bossbar set minecraft:a_version color green
execute if score timer consts matches 13.. if score timer_mode consts matches -2 run bossbar set minecraft:a_version max 314
execute if score timer consts matches -10..340 if score timer_mode consts matches -2 run scoreboard players set @a[tag=tagger] effect.freeze 2
execute if score timer consts matches -10.. if score timer_mode consts matches -2 run scoreboard players set @a[tag=tagger] effect.invis 2
execute if score timer consts matches -10.. if score timer_mode consts matches -2 run scoreboard players set @a[tag=tagger] effect.glow 0
execute if score timer consts matches 314..340 if score timer_mode consts matches -2 run scoreboard players set @a effect.freeze 2
execute if score timer consts matches -10.. if score timer_mode consts matches -2 run effect give @a[tag=tagger] invisibility infinite 0 true
execute if score timer consts matches -10.. if score timer_mode consts matches -2 run effect give @a[tag=tagger] blindness infinite 0 true
execute if score timer_mode consts matches -2 if score timer consts matches 14 run scoreboard players set timer_mode consts -1
execute if score timer consts matches -10.. if score timer_mode consts matches -2 as @a at @s run scoreboard players set glow event 0



execute if score timer_mode consts matches -1 run scoreboard players set timer consts 12000
execute if score timer_mode consts matches -1 run scoreboard players set Lostya safezones 3
execute if score timer_mode consts matches -1 run effect clear @a[tag=tagger] invisibility
execute if score timer_mode consts matches -1 run effect clear @a[tag=tagger] blindness
execute if score timer_mode consts matches -1 run execute as @a[tag=tagger] at @s run summon lightning_bolt
execute if score timer_mode consts matches -1 run scoreboard players set timer_mode consts 0




execute if score timer consts matches 540 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_1 master @s ~ ~ ~ 1 1
execute if score timer consts matches 540 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 540 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"1","color":"red"}
execute if score timer consts matches 560 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_2 master @s ~ ~ ~ 1 1
execute if score timer consts matches 560 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 560 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"2","color":"red"}
execute if score timer consts matches 580 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_3 master @s ~ ~ ~ 1 1
execute if score timer consts matches 580 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 580 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"3","color":"red"}
execute if score timer consts matches 600 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_4 master @s ~ ~ ~ 1 1
execute if score timer consts matches 600 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 600 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"4","color":"gold"}
execute if score timer consts matches 620 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_5 master @s ~ ~ ~ 1 1
execute if score timer consts matches 620 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 620 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"5","color":"gold"}
execute if score timer consts matches 640 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_6 master @s ~ ~ ~ 1 1
execute if score timer consts matches 640 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 640 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"6","color":"gold"}
execute if score timer consts matches 660 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_7 master @s ~ ~ ~ 1 1
execute if score timer consts matches 660 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 660 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"7","color":"yellow"}
execute if score timer consts matches 680 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_8 master @s ~ ~ ~ 1 1
execute if score timer consts matches 680 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 680 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"8","color":"yellow"}
execute if score timer consts matches 700 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_9 master @s ~ ~ ~ 1 1
execute if score timer consts matches 700 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 700 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"9","color":"yellow"}
execute if score timer consts matches 720 if score timer_mode consts matches 0..1 as @a at @s run playsound round.countdown_10 master @s ~ ~ ~ 1 1
execute if score timer consts matches 720 if score timer_mode consts matches 0..1 as @a at @s run title @a times 0 15 3
execute if score timer consts matches 720 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"10","color":"yellow"}

execute if score timer consts matches 760 if score timer_mode consts matches 0..1 as @a at @s run title @a times 30 20 3
execute if score timer consts matches 760 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"Раунд закончится через...","color":"gray"}


execute if score timer consts matches 1077 if score timer_mode consts matches 0..1 as @a at @s run title @a times 10 30 10
execute if score timer consts matches 1077 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"Вечная подсветка","color":"aqua"}
execute if score timer consts matches 1077 if score timer_mode consts matches 0..1 as @a at @s run title @a subtitle {"text":"Все постоянно подсвечиваются!","color":"dark_aqua"}

execute if score timer consts matches 1120 if score timer_mode consts matches 0..1 as @a at @s run title @a times 3 30 10
execute if score timer consts matches 1120 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"30 секунд","color":"yellow"}
execute if score timer consts matches 1120 if score timer_mode consts matches 0..1 as @a at @s run title @a subtitle {"text":"до окончания раунда","color":"gray"}
execute if score timer consts matches -10..1120 if score timer_mode consts matches 0..1 as @a at @s run scoreboard players set glow event 0
execute if score timer consts matches -10..1120 if score timer_mode consts matches 0..1 as @a at @s run scoreboard players set @a effect.glow 2
execute if score timer consts matches 1120 if score timer_mode consts matches 0..1 as @a at @s run playsound round.30_sec music @s ~ ~ ~ 1 1
execute if score timer consts matches 1120 if score timer_mode consts matches 0..1 as @a at @s run playsound round.warn master @s ~ ~ ~ 1 1.19


execute if score timer consts matches 1677 if score timer_mode consts matches 0..1 as @a at @s run title @a times 10 30 10
execute if score timer consts matches 1677 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"2х ускорение","color":"gold"}
execute if score timer consts matches 1677 if score timer_mode consts matches 0..1 as @a at @s run title @a subtitle {"text":"на восстановление способности и пёрла","color":"yellow"}

execute if score timer consts matches 1720 if score timer_mode consts matches 0..1 as @a at @s run title @a times 3 30 10
execute if score timer consts matches 1720 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"60 секунд","color":"light_purple"}
execute if score timer consts matches 1720 if score timer_mode consts matches 0..1 as @a at @s run title @a subtitle {"text":"до окончания раунда","color":"gray"}
execute if score timer consts matches -10..1720 if score timer_mode consts matches 0..1 as @a[gamemode=adventure, tag=!safezoned] at @s run scoreboard players remove @a ab.cd_ms 1
execute if score timer consts matches -10..1720 if score timer_mode consts matches 0..1 as @a[gamemode=adventure, tag=!safezoned] at @s run scoreboard players remove @a p_cd_ms 1
execute if score timer consts matches 1720 if score timer_mode consts matches 0..1 as @a at @s run playsound round.60_sec music @s ~ ~ ~ 1 1
execute if score timer consts matches 1720 if score timer_mode consts matches 0..1 as @a at @s run playsound round.warn master @s ~ ~ ~ 1 1
execute if score timer consts matches -10..1720 if score timer_mode consts matches 0..1 as @a at @s run function tag:bg_processes/stopmusic

execute if score timer consts matches -10..1750 if score timer_mode consts matches 0..1 as @a at @s run scoreboard players set game event.current_major_event 0
execute if score timer consts matches -10..1750 if score timer_mode consts matches 0..1 as @a at @s run scoreboard players set blackout event 0
execute if score timer consts matches -10..1750 if score timer_mode consts matches 0..1 as @a at @s run scoreboard players set air_raid event 0


execute if score timer consts matches 2320 if score timer_mode consts matches 0..1 as @a at @s run title @a times 3 30 10
execute if score timer consts matches 2320 if score timer_mode consts matches 0..1 as @a at @s run title @a title {"text":"2 минуты","color":"blue"}
execute if score timer consts matches 2320 if score timer_mode consts matches 0..1 as @a at @s run title @a subtitle {"text":"до окончания раунда","color":"gray"}



execute if score timer consts matches 70.. if score timer_mode consts matches 3 run bossbar set minecraft:a_version color yellow
execute if score timer consts matches 70.. if score timer_mode consts matches 3 run bossbar set minecraft:a_version max 1520
execute if score timer consts matches ..-10 if score timer_mode consts matches 3 run bossbar set minecraft:a_version color white
execute if score timer_mode consts matches 3 if score timer consts matches 1..70 run scoreboard players set timer consts 0

execute if score timer consts matches 500.. if score timer_mode consts matches 0..1 run bossbar set minecraft:a_version color yellow
execute if score timer consts matches 500.. if score timer_mode consts matches 0..1 run bossbar set minecraft:a_version max 12000
execute if score timer consts matches ..-10 if score timer_mode consts matches 0..1 run bossbar set minecraft:a_version color white
execute if score timer_mode consts matches 0..1 if score timer consts matches 1..530 run scoreboard players set timer consts 0


execute if score timer consts matches -10 if score timer_mode consts matches 0 run scoreboard players set timer_mode consts 10
execute if score timer consts matches -10 if score timer_mode consts matches 1 run scoreboard players set timer_mode consts 2




execute if score timer_mode consts matches 2 run scoreboard players set timer consts 1510
execute if score timer_mode consts matches 2 as @a at @s run playsound round.overtime master @s ~ ~ ~ 1 1 
execute if score timer_mode consts matches 2 as @a at @s run playsound round.overtime_start master @s ~ ~ ~ 1 1 
execute if score timer_mode consts matches 2 as @a at @s run worldborder warning distance 999999 
execute if score timer_mode consts matches 2 as @a at @s run title @a times 0 20 40 
execute if score timer_mode consts matches 2 as @a at @s run title @a title {"text":"Дополнительное время!","color":"dark_red"} 
execute if score timer_mode consts matches 2 unless score game_type consts matches 2..4 as @a at @s run title @a subtitle {"text":"Ещё целая минута поиграть!","color":"red"} 
execute if score timer_mode consts matches 2 if score game_type consts matches 2 as @a at @s run title @a subtitle {"text":"Зарази хотя-бы кого-нибудь","color":"red"} 
execute if score timer_mode consts matches 2 if score game_type consts matches 3 as @a at @s run title @a subtitle {"text":"Убей хотя-бы кого-нибудь","color":"red"} 
execute if score timer_mode consts matches 2 if score game_type consts matches 4 as @a at @s run title @a subtitle {"text":"Все должны быть либо заморожены либо нет","color":"red"} 
execute if score timer_mode consts matches 2 run scoreboard players set timer_mode consts 3

execute if score timer consts matches 75.. if score timer_mode consts matches 3 run bossbar set minecraft:a_version color yellow
execute if score timer consts matches 75.. if score timer_mode consts matches 3 run bossbar set minecraft:a_version style notched_6
execute if score timer consts matches 75.. if score timer_mode consts matches 3 run bossbar set minecraft:a_version max 1570
execute if score timer consts matches ..-10 if score timer_mode consts matches 3 run bossbar set minecraft:a_version color white
execute if score timer consts matches ..-10 if score timer_mode consts matches 3 run bossbar set minecraft:a_version style progress
execute if score timer consts matches -10..1570 if score timer_mode consts matches 3 as @a[gamemode=adventure, tag=!safezoned] at @s run scoreboard players remove @a ab.cd_ms 1
execute if score timer consts matches -10..1570 if score timer_mode consts matches 3 as @a[gamemode=adventure, tag=!safezoned] at @s run scoreboard players remove @a p_cd_ms 1
execute if score timer consts matches -10..1570 if score timer_mode consts matches 3 as @a at @s run scoreboard players set glow event 0
execute if score timer consts matches -10..1570 if score timer_mode consts matches 3 as @a at @s run scoreboard players set @a effect.glow 2
execute if score timer_mode consts matches 3 if score timer consts matches 1..75 run scoreboard players set timer consts 0


execute if score timer consts matches -10 if score timer_mode consts matches 3 run scoreboard players set timer_mode consts 10





execute if score timer_mode consts matches 10 as @a at @s run worldborder warning distance 0
execute if score timer_mode consts matches 10 run title @a times 0 20 50
execute if score timer_mode consts matches 10 run title @a title {"text":"Раунд окончен!","color":"green"}
execute if score timer_mode consts matches 10 as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute if score timer_mode consts matches 10 run scoreboard players set timer consts 0
execute if score timer_mode consts matches 10 run bossbar set a_version color white
execute if score timer_mode consts matches 10 run bossbar set a_version style progress
execute if score timer_mode consts matches 10 run scoreboard players set Lostya safezones 1
execute if score timer_mode consts matches 10 run scoreboard players set timer_mode consts -10



#execute if score timer consts matches -10 as @a at @s run summon lightning_bolt
#execute if score timer consts matches -10 as @a at @s run gamemode spectator @s

#execute if score timer consts matches 1001 run scoreboard players set @a effect.freeze 99999
#execute if score timer consts matches 1001 run spreadplayers 0 0 50 50 under 80 false @a