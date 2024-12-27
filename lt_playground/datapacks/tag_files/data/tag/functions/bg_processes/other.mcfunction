recipe take @a *
gamerule doLimitedCrafting true
gamemode adventure @a[gamemode=survival]
clear @a minecraft:end_crystal
kill @e[type=minecraft:eye_of_ender]
effect give @a[team = !menu, team = !menu_tagger] minecraft:instant_health 4 99 true
execute as @a at @s run attribute @s minecraft:generic.attack_speed base set 99999
execute as @e[type=ender_pearl] run data merge entity @s {Glowing:1b}
team join pearl @e[type=ender_pearl]
execute as @a[tag=invincible.one_time] at @s run particle dust 0 1 1 1 ~ ~1 ~ .3 .5 .3 0 3
execute as @a[tag=invincible] at @s run particle dust 0 .5 1 1 ~ ~1 ~ .2 .4 .2 0 1
execute as @e[tag=frozen,type=!armor_stand] at @s run tp @s @s
execute as @e[tag=frozen,type=!armor_stand] at @s run tp @s ~ ~ ~
execute as @e[tag=frozen,type=!armor_stand] at @s run particle electric_spark ~ ~.3 ~ .2 .2 .2 0 2
kill @e[type=tnt]
kill @e[type=creeper]
#execute as TheVexlessAnimae at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
#effect give TheVexlessAnimae weakness 9999 5 true
#execute as TheVexlessAnimae at @s run tp @s @s

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


execute as @e at @s run fill ~-4 ~-5 ~-4 ~4 ~5 ~4 cyan_stained_glass replace light_blue_stained_glass
execute as @a[gamemode = !spectator] at @s run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 light_blue_stained_glass replace cyan_stained_glass
execute as @e[type=!player, tag=!corrector] at @s run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 light_blue_stained_glass replace cyan_stained_glass

execute as @e at @s run fill ~-4 ~-5 ~-4 ~4 ~5 ~4 light_blue_stained_glass replace moving_piston
execute as @a[gamemode = !spectator] at @s run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 moving_piston replace light_blue_stained_glass
execute as @e[type=!player, tag=!corrector] at @s run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 moving_piston replace light_blue_stained_glass


execute as @e at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 barrier replace tinted_glass
execute as @a[gamemode = !spectator] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 tinted_glass replace barrier



execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-1 ~ minecraft:structure_block run playsound ui.toast.in master @s ~ ~ ~ 100 2
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-2 ~ minecraft:structure_block run playsound ui.toast.in master @s ~ ~ ~ 100 2
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-1 ~ minecraft:structure_block run tag @s add no_saving_pos
execute as @a[tag=!no_saving_pos, gamemode = adventure] at @s if block ~ ~-2 ~ minecraft:structure_block run tag @s add no_saving_pos
execute as @a[tag=no_saving_pos] at @s unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block unless block ~ ~-1 ~ air run playsound ui.toast.out master @s ~ ~ ~ 100 2
execute as @a[tag=no_saving_pos] at @s unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block unless block ~ ~-1 ~ air run tag @s remove no_saving_pos

bossbar set minecraft:notif.no_save_position players @a[tag=no_saving_pos]

scoreboard players add notifanim notifanim 1
execute if score notifanim notifanim matches 20.. run scoreboard players set notifanim notifanim 0
execute if score notifanim notifanim matches 1 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#FF0000"}
execute if score notifanim notifanim matches 2 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#F30606"}
execute if score notifanim notifanim matches 3 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#DD1010"}
execute if score notifanim notifanim matches 4 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#C71B1B"}
execute if score notifanim notifanim matches 5 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#B22626"}
execute if score notifanim notifanim matches 6 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#9D3131"}
execute if score notifanim notifanim matches 7 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#873B3B"}
execute if score notifanim notifanim matches 8 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#724646"}
execute if score notifanim notifanim matches 9 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#5D5151"}
execute if score notifanim notifanim matches 10 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#555555"}
execute if score notifanim notifanim matches 19 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#7C4141"}


execute as @a at @s if block ~ ~ ~ minecraft:powder_snow_cauldron run scoreboard players set @s effect.invis 2

execute as @a at @s if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:powder_snow_cauldron[level=1]
execute as @a at @s if block ~ ~-1 ~ minecraft:powder_snow_cauldron run setblock ~ ~-1 ~ minecraft:cauldron


kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:area_effect_cloud]
effect give @a[team = !menu, team = !menu_tagger] minecraft:haste 1 0 true
scoreboard players enable @a rescue



execute store result bossbar joined value run scoreboard players get joined joined
execute if score joined joined matches -2.. run scoreboard players remove joined joined 1
execute if score joined joined matches -2.. run bossbar set joined visible true
execute if score joined joined matches -2.. run bossbar set joined players @a
execute unless score joined joined matches -2.. run bossbar set joined visible false



execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
execute as @a[tag=!joined.sound] at @s run team leave @s
execute as @a[tag=!joined.sound] at @s run bossbar set joined name [{"selector":"@s","color":"yellow"},{"text":" зашёл!"}]
execute as @a[tag=!joined.sound] at @s run scoreboard players set joined joined 60
execute as @a[tag=!joined.sound] at @s run effect give @s invisibility 1 0 true
#execute as @a[tag=!joined.sound, team=!menu, team=!menu_tagger] at @s run scoreboard players set @s menu 0
execute as @a[tag=!joined.sound] at @s run stopsound @s
#execute as @a[tag=!joined.sound] at @s run playsound menu music @s ~ ~ ~ .5
execute as @a[tag=!joined.sound] at @s run gamemode adventure @s
execute as @a[tag=!joined.sound] at @s run tp @s @e[type=armor_stand,tag=spawn,sort=nearest,limit=1]
execute as @a[tag=!joined.sound] at @s run team join y.safezoned @s
#execute as @a[tag=!joined.sound] at @s run tp @s 3 47 -80
execute as @a[tag=!joined.sound] at @s run tag @s add joined.sound

execute as @a[scores={left=1..}] at @s run tag @s remove joined.sound
execute as @a[scores={left=1..}] at @s run scoreboard players reset @s left




execute as @a[scores={fall=..749}] at @s run scoreboard players set @s fall 0
execute as @a[scores={fall=1000..2499}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .2 25
execute as @a[scores={fall=750..2499}, nbt={OnGround:1b}] at @s run damage @s 1 minecraft:generic
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}] at @s run damage @s 1 minecraft:generic by @r[tag=!tagger]
execute as @a[scores={fall=2500..}, nbt={OnGround:1b}] at @s run particle cloud ~ ~ ~ .3 0 .3 .3 50
execute as @a[scores={fall=2500..}] at @s run damage @a[distance=..3, scores={fall=..2499}, limit = 1] 1 minecraft:generic by @s
execute as @a[scores={fall=2500..}] at @s run scoreboard players set @a[distance=..3, scores={fall=..1399}, nbt={OnGround:1b}] effect.throw 2
execute as @a[scores={fall=750..}, nbt = {OnGround: 1b}] at @s run scoreboard players set @s fall 0


bossbar set minecraft:notif.afk players @a[tag=afk]


clear @a[name = !"Lostya"] command_block
clear @a[name = !"Lostya"] chain_command_block
clear @a[name = !"Lostya"] repeating_command_block
#clear @a[name = !"Lostya"] elytra
clear @a[name = !"Lostya"] trident
weather clear

scoreboard players add glow event 1
execute if score glow event matches 3600.. run title @a[tag = !tagger] title {"text":"Подсветка!","color":"#00FFFF"}
execute if score glow event matches 3600.. run title @a[tag = tagger] title {"text":"Подсветка!","color":"#00FFFF"}
execute if score glow event matches 3600.. run title @a[tag = !tagger] subtitle {"translate":"effect.glow","color":"#00FFFF"}
execute if score glow event matches 3600.. run title @a[tag = tagger] subtitle {"translate":"effect.glow","color":"#00FFFF"}
execute if score glow event matches 3600.. run scoreboard players set @a[tag = !tagger] effect.glow 100
execute if score glow event matches 3600.. run scoreboard players set @a[tag = tagger] effect.glow 100
execute if score glow event matches 3600.. run scoreboard players set glow event 0

execute as @e[type=item, nbt={Age:0s, PickupDelay:40s}] run data merge entity @s {Age:5960, PickupDelay:0}

#gamemode adventure @a[name = !"Lostya"]


execute as @a[scores={afk.timer=..600}, tag=!afk] run scoreboard players add @a[scores={stat.speed=0..9}] afk.timer 1
execute as @a[scores={afk.timer=64..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 32
execute as @a[scores={afk.timer=32..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 8
execute as @a[scores={afk.timer=16..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 4
execute as @a[scores={afk.timer=4..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 2
execute as @a[scores={afk.timer=2..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 1

#execute as @a[scores={afk.timer=600..}, tag=!afk] run tellraw @a [{"text":"⏳ ","color":"yellow"},{"selector":"@s"}," теперь AFK"]
tag @a[scores={afk.timer=600..}] add afk
scoreboard players set @a[scores={afk.timer=600..}] afk.timer 0
execute as @a[tag=afk] at @s run particle dust 1 1 0 1 ~ ~1 ~ .2 .4 .2 0 3

execute as @a[scores={afk.timer=..0}, tag=afk] run scoreboard players remove @s[scores={stat.speed=10..}] afk.timer 1
execute as @a[scores={afk.timer=..-1}, tag=afk] run scoreboard players add @s[scores={stat.speed=0..9}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=afk] run scoreboard players set @s afk.timer 0

#execute as @a[scores={afk.timer=..-30}, tag=afk] run tellraw @a [{"text":"⌛ ","color":"yellow"},{"selector":"@s"}," больше не AFK"]
tag @a[scores={afk.timer=..-30}] remove afk
scoreboard players set @a[scores={afk.timer=..-30}] afk.timer 0