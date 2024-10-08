# block changer
execute as @a at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 cave_air replace emerald_block
scoreboard players enable Lostya safezones
scoreboard players enable @a safezone_titles

# enable/disable safezones; entrance block changing handler
execute if score Lostya safezones matches 1 run tellraw @a {"translate":"safezone.command.enable","color":"green"}
execute if score Lostya safezones matches 1 run scoreboard players set Lostya safezones 2
execute if score Lostya safezones matches 2 run execute as @a[scores={d=0}] at @s if block ~ ~ ~ cave_air run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=0}] at @s if block ~ ~1 ~ cave_air run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=0}] at @s if block ~ ~ ~ moving_piston run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=0}] at @s if block ~ ~1 ~ moving_piston run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=4}] at @s if block ~ ~ ~ cave_air run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=4}] at @s if block ~ ~1 ~ cave_air run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=4}] at @s if block ~ ~ ~ moving_piston run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a[scores={d=4}] at @s if block ~ ~1 ~ moving_piston run tag @s add safezoned
execute if score Lostya safezones matches 2 run execute as @a at @s unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air unless block ~ ~ ~ moving_piston unless block ~ ~1 ~ moving_piston run tag @s remove safezoned
execute if score Lostya safezones matches 3.. run tellraw @a {"translate":"safezone.command.disable","color":"red"}
execute if score Lostya safezones matches 3.. run scoreboard players set Lostya safezones 0
execute if score Lostya safezones matches 0 run tag @a remove safezoned

# safezone title setting
execute as @a if score @s safezone_titles matches 1 run tellraw @s {"translate":"safezone.command.title_disable","color":"red"}
execute as @a if score @s safezone_titles matches 1 run scoreboard players set @s safezone_titles 2
execute as @a if score @s safezone_titles matches 3.. run tellraw @s {"translate":"safezone.command.title_enable","color":"green"}
execute as @a if score @s safezone_titles matches 3.. run scoreboard players set @s safezone_titles 0

# general cosmetic effects
bossbar set minecraft:notif.safezone players @a[gamemode = !spectator, tag=safezoned]
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run particle happy_villager ~ ~2 ~ 3 5 3 0 1 normal @s
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run particle dust 0 1 0 1 ~ ~2 ~ 3 5 3 0 1 normal @s
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run particle dust 0 1 0 1 ~ ~1 ~ 1 1 1 0 3 normal @a[tag=!safezoned]
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run particle dust 0 1 0 .5 ~ ~1 ~ .4 .6 4 0 1 normal @a[tag=!safezoned]
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run function tag:bg_processes/stopmusic
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s if score notifanim notifanim matches 1 run particle happy_villager ~ ~1 ~ .5 .6 .5 0 1 normal @a[tag=!safezoned]
execute as @a[tag=safezoned, scores={d=0}, gamemode = !spectator] at @s run particle dust_color_transition 0 1 0 1 1 1 0 ~ ~2 ~ 6 10 6 0 1 normal @s
execute as @a[gamemode = !spectator, tag = safezoned] at @s run effect give @s nausea 4 0 true
execute as @a[gamemode = !spectator, tag = safezoned] at @s run effect give @s resistance 2 255 true
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players set @s[scores = {p_cd_s=0}] p_cd_s 1
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players set @s[scores = {p_cd_s=1}] p_cd_ms 4
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players add @s[scores = {p_cd_s=2..}] p_cd_ms 1
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players set @s[scores = {ab.cd_s=-1..0}] ab.cd_s 1
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players add @s[scores = {ab.cd_s=2..}] ab.cd_ms 1
execute as @a[gamemode = !spectator, tag = safezoned] at @s run scoreboard players set @s[scores = {ab.cd_s=1}] ab.cd_ms 5


# entered the safezone
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] times 0 20 3
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] subtitle {"translate":"safezone.entered.subtitle","color":"aqua"}
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] title {"translate":"safezone.entered.title","color":"green"}
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run attribute @s generic.attack_damage base set 0
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run attribute @s generic.armor base set 255
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run attribute @s generic.armor_toughness base set 255
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run playsound ui.toast.in master @s ~ ~ ~ 100 2
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run stopsound @s ambient
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run playsound safezone_start ambient @s ~ ~ ~ 0.5 1
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s unless score game event.current_major_event matches 1.. run function safezone:play
execute as @a[gamemode = !spectator, tag = safezoned] at @s if score game event.current_major_event matches 1.. run function safezone:stop
# safezone namespace is used in an external datapack created by note block studio
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run tag @s remove afk
execute as @a[gamemode = !spectator, tag = safezoned, tag = !safezoned2] at @s run tag @s add safezoned2


# left the safezone
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] times 0 20 3
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] subtitle {"translate":"safezone.left.subtitle","color":"gold"}
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2, scores={d=0}] at @s run title @s[scores={safezone_titles=0}] title {"translate":"safezone.left.title","color":"red"}
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run effect clear @s resistance
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run attribute @s generic.attack_damage base set 1
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run attribute @s generic.armor base set 0
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run attribute @s generic.armor_toughness base set 0
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run playsound ui.toast.out master @s ~ ~ ~ 100 2
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run stopsound @s ambient
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run playsound safezone_stop ambient @s ~ ~ ~ 0.5 1
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run function safezone:stop
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run team join player @s[team=z_safezoned]
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run team join tagger @s[team=z_safezoned_tagger]
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run tag @s remove afk
execute as @a[gamemode = !spectator, tag = !safezoned, tag = safezoned2] at @s run tag @s remove safezoned2
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run attribute @s generic.attack_damage base set 1
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run attribute @s generic.armor base set 0
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run attribute @s generic.armor_toughness base set 0
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run playsound ui.toast.out master @s ~ ~ ~ 100 2
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run stopsound @s music
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run stopsound @s ambient
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run playsound safezone_stop ambient @s ~ ~ ~ 0.5 1
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run function safezone:stop
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run tag @s remove afk
execute as @a[gamemode = spectator, tag = safezoned, tag = safezoned2] at @s run tag @s remove safezoned2


# bossbar notification animation
execute if score notifanim notifanim matches 1 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFCF"}
execute if score notifanim notifanim matches 2 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFC1"}
execute if score notifanim notifanim matches 3 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFB3"}
execute if score notifanim notifanim matches 4 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#24FFA3"}
execute if score notifanim notifanim matches 5 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF94"}
execute if score notifanim notifanim matches 6 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF84"}
execute if score notifanim notifanim matches 7 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF75"}
execute if score notifanim notifanim matches 8 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF67"}
execute if score notifanim notifanim matches 9 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF57"}
execute if score notifanim notifanim matches 10 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#26FF48"}
execute if score notifanim notifanim matches 11 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF57"}
execute if score notifanim notifanim matches 12 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF67"}
execute if score notifanim notifanim matches 13 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF75"}
execute if score notifanim notifanim matches 14 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF84"}
execute if score notifanim notifanim matches 15 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#25FF94"}
execute if score notifanim notifanim matches 16 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#24FFA3"}
execute if score notifanim notifanim matches 17 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFB3"}
execute if score notifanim notifanim matches 18 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFC1"}
execute if score notifanim notifanim matches 19 run bossbar set minecraft:notif.safezone name {"translate":"safezone.notif","color":"#23FFCF"}