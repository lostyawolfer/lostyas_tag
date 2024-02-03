execute as @a at @s if entity @s[nbt={SelectedItem:{}}, tag=safezoned] run effect give @s mining_fatigue infinite 10 true
execute as @a at @s unless entity @s[nbt={SelectedItem:{}}, tag=safezoned] run effect clear @s mining_fatigue

effect give @a instant_health infinite 5 true

recipe take @a *
gamerule doLimitedCrafting true
gamemode adventure @a[gamemode=survival]
clear @a minecraft:end_crystal
execute as @a unless score @s playtime.best matches 0.. run scoreboard players set @s playtime.best 0
execute as @a if score @s playtime > @s playtime.best run scoreboard players operation @s playtime.best = @s playtime
execute as @a if score @s playtime matches 0 run scoreboard players operation @s playtime.best2 = @s playtime.best
kill @e[type=minecraft:eye_of_ender]
execute as @a at @s run attribute @s minecraft:generic.attack_speed base set 99999
execute as @e[type=ender_pearl] run data merge entity @s {Glowing:1b}
team join pearl @e[type=ender_pearl]
execute as @a[tag=invincible.one_time] at @s run particle dust 0 1 1 1 ~ ~1 ~ .3 .5 .3 0 3
execute as @a[tag=invincible] at @s run particle dust 0 .5 1 1 ~ ~1 ~ .2 .4 .2 0 1
execute as @e[tag=frozen,type=!armor_stand] at @s run tp @s @s
execute as @e[tag=frozen,type=!armor_stand] at @s run tp @s ~ ~ ~
execute as @e[tag=frozen,type=!armor_stand] at @s run particle electric_spark ~ ~.3 ~ .2 .2 .2 0 2
kill @e[type=tnt]
#kill @e[type=creeper]
#execute as TheVexlessAnimae at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
#effect give TheVexlessAnimae weakness 9999 5 true
#execute as TheVexlessAnimae at @s run tp @s @s

execute as @e[type=armor_stand, tag=spawn] at @s run particle dust_color_transition 0 1 0 .75 .75 1 .5 ~ ~1.3 ~ 0 .1 0 0 20
execute as @e[type=armor_stand, tag=spawn] at @s run particle dust_color_transition 0 1 0 1 .75 1 .5 ~ ~.1 ~ .2 0 .2 0 10
execute as @e[type=armor_stand, tag=spawn] at @s positioned ^ ^ ^.3 run particle dust_color_transition 0 0 1 .5 0 .5 1 ~ ~1.3 ~ 0 0 0 0 2
#execute as @e[type=armor_stand, tag=spawn] at @s run particle end_rod ~ ~1.3 ~ 0 0 0 .05 1
#execute as @e[type=armor_stand, tag=spawn] at @s run particle dust_color_transition 1 0 1 1 1 1 1 ~ ~ ~ .6 0 .6 0 20

spawnpoint @a 3 47 -80
execute as @a[scores={d=4}] at @s run scoreboard players set @s[scores={hp=1..}] d 0
execute as @a[scores={d=3}] as @s[scores={hp=1..}] at @s run title @s title ""
execute as @a[scores={d=3}] as @s[scores={hp=1..}] at @s run title @s subtitle ""
execute as @a[scores={d=3}] at @s run scoreboard players set @s[scores={hp=1..}] d 4
execute as @a[scores={d=2}] as @s[scores={hp=1..}] at @s run attribute @s generic.max_health base set 25
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



execute as @e at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cyan_stained_glass replace moving_piston
execute as @a[gamemode = !spectator] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 moving_piston replace cyan_stained_glass
execute as @e[type=!player, tag=!corrector] at @s run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 moving_piston replace cyan_stained_glass

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



execute store result bossbar joined value run scoreboard players get joined joined
execute if score joined joined matches -2.. run scoreboard players remove joined joined 1
execute if score joined joined matches -2.. run bossbar set joined visible true
execute if score joined joined matches -2.. run bossbar set joined players @a
execute unless score joined joined matches -2.. run bossbar set joined visible false



execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
execute as @a[tag=!joined.sound] at @s run team leave @s
execute as @a[tag=!joined.sound] at @s run scoreboard players add @s playtime 0
execute as @a[tag=!joined.sound] at @s run bossbar set joined name [{"selector":"@s","color":"yellow"},{"text":" зашёл!"}]
execute as @a[tag=!joined.sound] at @s run scoreboard players set joined joined 60
execute as @a[tag=!joined.sound] at @s run effect give @s invisibility 1 0 true
#execute as @a[tag=!joined.sound, team=!menu, team=!menu_tagger] at @s run scoreboard players set @s menu 0
execute as @a[tag=!joined.sound] at @s run stopsound @s
#execute as @a[tag=!joined.sound] at @s run playsound menu music @s ~ ~ ~ .5
execute as @a[tag=!joined.sound] at @s run gamemode adventure @s
execute as @a[tag=!joined.sound] at @s run tp @s @e[type=armor_stand,tag=spawn,sort=nearest,limit=1]
execute as @a[tag=!joined.sound] at @s run function tag:bg_processes/tp_back/get_id
execute as @a[tag=!joined.sound] at @s run team join y.safezoned @s
#execute as @a[tag=!joined.sound] at @s run tp @s 3 47 -80
execute as @a[tag=!joined.sound] at @s run tag @s add joined.sound

execute as @a[scores={left=1..}] at @s run tag @s remove joined.sound
execute as @a[scores={left=1..}] at @s run scoreboard players reset @s left




execute as @a[scores={fall=..749}] at @s run scoreboard players set @s fall 0
execute as @a[scores={fall=1000..2499}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .2 25
execute as @a[scores={fall=750..2499}, nbt={OnGround:1b}, predicate=!tag:sneaking] at @s unless block ~ ~-1 ~ beacon run damage @s 1 minecraft:generic
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}, predicate=!tag:sneaking] at @s unless block ~ ~-1 ~ beacon run damage @s 1 minecraft:generic by @r[tag=!tagger]
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}, predicate=tag:sneaking] at @s unless block ~ ~-1 ~ beacon run damage @s 1 minecraft:generic
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .3 50
execute as @a[scores={fall=1400..}] at @s if entity @a[distance=..5, scores={fall=..1399}, nbt={OnGround:1b}] run scoreboard players set @s[tag=!tagger,tag=!afk,tag=!safezoned,gamemode=adventure] playtime.title.trigger 7
execute as @a[scores={fall=1400..}] at @s if entity @a[distance=..5, scores={fall=..1399}, nbt={OnGround:1b}] run scoreboard players add @s[tag=!tagger,tag=!afk,tag=!safezoned,gamemode=adventure] playtime 5
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

execute store result score playercount event if entity @a[gamemode=adventure, tag=!safezoned, tag=!afk]
execute if score playercount event matches 2.. if entity @a[tag=tagger, tag=!safezoned, tag=!afk, gamemode=adventure] run scoreboard players add glow event 1
execute if score glow event matches 2000.. run title @a[tag = !tagger] title {"translate":"event.glowing.title","color":"#00FFFF"}
execute if score glow event matches 2000.. run title @a[tag = tagger] title {"translate":"event.glowing.title","color":"#00FFFF"}
execute if score glow event matches 2000.. run title @a[tag = !tagger] subtitle {"translate":"event.glowing.subtitle","color":"#00FFFF"}
execute if score glow event matches 2000.. run title @a[tag = tagger] subtitle {"translate":"event.glowing.subtitle_tag","color":"gold"}
execute if score glow event matches 2000.. run scoreboard players set @a[tag = !tagger, gamemode=adventure, tag=!safezoned] effect.glow 100
execute if score glow event matches 2000.. run scoreboard players set @a[tag = tagger, gamemode=adventure, tag=!safezoned] effect.glow 100
execute if score glow event matches 2000.. run scoreboard players set glow event 0

execute as @e[type=item, nbt={Age:0s, PickupDelay:40s}] run data merge entity @s {Age:5960, PickupDelay:0}

#gamemode adventure @a[name = !"Lostya"]


execute as @a[scores={afk.timer=..600}, tag=!afk] run scoreboard players add @a[scores={stat.speed2=0..9}] afk.timer 1
execute as @a[scores={afk.timer=64..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 32
execute as @a[scores={afk.timer=32..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 8
execute as @a[scores={afk.timer=16..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 4
execute as @a[scores={afk.timer=4..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 2
execute as @a[scores={afk.timer=2..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 1

#execute as @a[scores={afk.timer=600..}, tag=!afk] run tellraw @a [{"text":"⏳ ","color":"yellow"},{"selector":"@s"}," теперь AFK"]
tag @a[scores={afk.timer=600..}] add afk
scoreboard players set @a[scores={afk.timer=600..}] afk.timer 0
execute as @a[tag=afk, gamemode=adventure] unless score @s effect.invis matches 1.. at @s run particle dust 1 1 0 1 ~ ~1 ~ .2 .4 .2 0 3 normal @a[distance=.1..]

execute as @a[scores={afk.timer=..0}, tag=afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 2
execute as @a[scores={afk.timer=..-1}, tag=afk] run scoreboard players add @s[scores={stat.speed2=0..9}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=afk] run scoreboard players set @s afk.timer 0

#execute as @a[scores={afk.timer=..-30}, tag=afk] run tellraw @a [{"text":"⌛ ","color":"yellow"},{"selector":"@s"}," больше не AFK"]
tag @a[scores={afk.timer=..-30}] remove afk
scoreboard players set @a[scores={afk.timer=..-30}] afk.timer 0



# compute speeds
execute as @a[scores={stat.speed2=1..}] run scoreboard players set @s stat.speed2 0

execute as @a[scores={walk2=0..998}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk2
execute as @a[scores={walk2=0..}] run scoreboard players set @s walk2 0

execute as @a[scores={walk=1..}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk
execute as @a[scores={walk=1..}] run scoreboard players set @s walk 0

execute as @a[scores={walk3=1..}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk3
execute as @a[scores={walk3=1..}] run scoreboard players set @s walk3 0

execute as @a[scores={walk5=1..}] run scoreboard players operation @s stat.speed2 = @s walk5
execute as @a[scores={walk5=1..}] run scoreboard players set @s walk5 0

execute as @a[scores={walk4=0..}, nbt={OnGround:0b}] run scoreboard players operation @s stat.speed2 = @s walk4
execute as @a[scores={walk4=1..}] run scoreboard players set @s walk4 0

execute as @a[scores={stat.speed2=999..}, nbt={OnGround:1b}] run scoreboard players set @s stat.speed2 999


execute as @a run scoreboard players operation @s stat.speed2 *= 20 consts
execute as @a run scoreboard players operation @s stat.speed2 /= 100 consts



execute as @e[type=ender_pearl] at @s run particle glow ~ ~ ~ .1 .1 .1 .075 5




execute as @a run scoreboard players operation @s stat.get_tagged.k = @s stat.get_tagged
execute as @a run scoreboard players operation @s stat.get_tagged.k /= 1000 consts

execute as @a run scoreboard players operation @s stat.get_tagged.kdec = @s stat.get_tagged
execute as @a run scoreboard players operation @s stat.get_tagged.kdec %= 1000 consts
execute as @a run scoreboard players operation @s stat.get_tagged.kdec /= 100 consts



execute as @a run scoreboard players operation @s playtime.display = @s playtime

execute as @a run scoreboard players operation @s playtime.display.k = @s playtime.display
execute as @a run scoreboard players operation @s playtime.display.k /= 1000 consts

execute as @a run scoreboard players operation @s playtime.display.kdec = @s playtime.display
execute as @a run scoreboard players operation @s playtime.display.kdec %= 1000 consts
execute as @a run scoreboard players operation @s playtime.display.kdec /= 100 consts