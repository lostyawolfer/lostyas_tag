execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] run title @a times 0 40 30
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] run title @a title {"translate": "event.air_raid.end.title", "color":"green"}
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] run title @a subtitle {"translate": "event.air_raid.end.subtitle", "color":"gray"}
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] run tellraw @a {"translate": "event.air_raid.end.chat", "color":"green"}
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] as @a run function proceed_to_the_nearest_shelter:stop
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] as @a run function win_sound:play
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] as @a run bossbar set event visible false
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] as @a run bossbar set event value 0
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] as @a at @s run worldborder warning distance 0
execute unless score game event.current_major_event matches 1 if entity @e[type=armor_stand, tag=air_raid] run kill @e[type=armor_stand, tag=air_raid]



execute if score playercount event matches 2.. if entity @a[tag=tagger, tag=!safezoned, tag=!afk, gamemode=adventure] unless score game event.current_major_event matches 1.. run scoreboard players add air_raid event 1
execute if score air_raid event matches 30000.. run scoreboard players set game event.current_major_event 1
execute if score air_raid event matches 30000.. run scoreboard players set air_raid event 0






#execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] run title @a times 20 40 30
#execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] run title @a title {"translate": "event.air_raid.title", "color":"red", "bold": true}
#execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] run title @a subtitle {"translate": "event.air_raid.subtitle", "color":"gray", "bold": true}
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] run tellraw @a {"translate": "event.air_raid.chat", "color":"red"}
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] run tellraw @a {"translate": "event.air_raid.chat.description", "color":"gray"}
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run function proceed_to_the_nearest_shelter:play
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run scoreboard players set timer event.current_major_event 65000
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run bossbar set event max 65000
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run bossbar set event color red
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run bossbar set event visible true
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run bossbar set event name [{"translate":"event.air_raid.bossbar","color":"red"}," ",{"translate":"event.air_raid.bossbar.description","color":"gray"}]
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run worldborder warning distance 999999999
execute if score game event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=air_raid] as @a at @s run summon armor_stand ~ ~ ~ {Tags:[air_raid, air_raid_start], Invulnerable: 1b, Invisible: 1b}

execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid_start] run scoreboard players set @s event.current_major_event -200
execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid_start] run tag @s remove air_raid_start



execute if score game event.current_major_event matches 1 as @a run function tag:bg_processes/stopmusic
execute if score game event.current_major_event matches 1 as @a at @s run particle crimson_spore ~ ~5 ~ 10 10 10 0 100 normal @s
#execute if score game event.current_major_event matches 1 as @a at @s run scoreboard players add @s xp.recieve 1
execute if score game event.current_major_event matches 1 run bossbar set event players @a
execute if score game event.current_major_event matches 1 if score timer event.current_major_event matches 1000.. run scoreboard players remove timer event.current_major_event 20
execute if score game event.current_major_event matches 1 if score timer event.current_major_event matches 1000.. as @a run scoreboard players add timer event.current_major_event 1
execute if score game event.current_major_event matches 1 if score timer event.current_major_event matches 1000.. store result bossbar event value run scoreboard players get timer event.current_major_event
execute if score game event.current_major_event matches 1 if score timer event.current_major_event matches ..999 run scoreboard players set game event.current_major_event 0

execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid] at @p run spreadplayers ~ ~ 0 17.5 false @s
execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid, scores={event.current_major_event=50..}] at @s as @a[distance=..2, tag=!tagger, tag=!safezoned, gamemode=adventure, tag=!air_raid_invulnerable] at @s run function tag:events/major.air_raid.lightning

execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid, scores={event.current_major_event=50..}] at @s if entity @a[distance=..2, tag=!tagger, tag=!safezoned, gamemode=adventure, tag=!air_raid_invulnerable] run scoreboard players set @s event.current_major_event 0
execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid] at @s unless entity @a[distance=..2, tag=!tagger, tag=!air_raid_invulnerable] run scoreboard players add @s event.current_major_event 1

execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid, scores={event.current_major_event=230..}] at @s unless entity @a[distance=..3, tag=!tagger, tag=!safezoned, gamemode=adventure, tag=!air_raid_invulnerable] run summon lightning_bolt ~ ~ ~
execute if score game event.current_major_event matches 1 as @e[type=armor_stand, tag=air_raid, scores={event.current_major_event=230..}] at @s unless entity @a[distance=..3, tag=!tagger, tag=!safezoned, gamemode=adventure, tag=!air_raid_invulnerable] run scoreboard players set @s event.current_major_event 0