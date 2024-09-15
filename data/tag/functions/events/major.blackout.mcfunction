execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a at @s run time set 23400t
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] run tellraw @a {"translate": "event.blackout.end.chat", "color":"green"}
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a run function win_sound:play
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 99999 1
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a at @s run stopsound @s music blackout_bg
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a run bossbar set event visible false
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] as @a run bossbar set event value 0
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] run kill @e[type=armor_stand, tag=blackout_start]
execute unless score game event.current_major_event matches 2 if entity @e[type=armor_stand, tag=blackout] run kill @e[type=armor_stand, tag=blackout]



execute if score playercount event matches 2.. if entity @a[tag=tagger, tag=!safezoned, tag=!afk, gamemode=adventure] unless score game event.current_major_event matches 1.. run scoreboard players add blackout event 1
execute if score blackout event matches 15000.. run scoreboard players set game event.current_major_event 2
execute if score blackout event matches 15000.. run scoreboard players set blackout event 0


execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches -1.. unless entity @e[type=armor_stand, tag=blackout_start] run scoreboard players set animation event.current_major_event 20


execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1.. run scoreboard players remove animation event.current_major_event 1

execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 16 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect give @s blindness 3 0 true
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 16 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 0.7
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 10 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect clear @s blindness
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 10 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 0.8
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 6 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect give @s blindness 3 0 true
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 6 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 1
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 5 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect clear @s blindness
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 5 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 1.2
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 3 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect give @s blindness 3 0 true
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 3 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect give @s darkness 10 0 true
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 3 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 1.4
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 2 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run effect clear @s blindness
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 2 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 99999 1.5

execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 99999 1
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 99999 0
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound blackout master @s ~ ~ ~ 0.3 1
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=blackout_start] as @a at @s run playsound blackout_bg music @s ~ ~ ~ 1 1
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches 1 unless entity @e[type=armor_stand, tag=blackout_start] run scoreboard players set animation event.current_major_event -1
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches -1 run summon armor_stand ~ ~ ~ {Tags:[blackout_start], Invulnerable: 1b, Invisible: 1b}
execute if score game event.current_major_event matches 2 if score animation event.current_major_event matches -1 run scoreboard players reset animation event.current_major_event

execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] run tellraw @a {"translate": "event.blackout.chat", "color":"dark_purple"}
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] run tellraw @a {"translate": "event.blackout.chat.description", "color":"gray"}
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run scoreboard players set timer event.current_major_event 55000
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run bossbar set event max 55000
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run bossbar set event color purple
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run bossbar set event visible true
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run bossbar set event name [{"translate":"event.blackout.bossbar","color":"dark_purple"}," ",{"translate":"event.blackout.bossbar.description","color":"gray"}]
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] as @a at @s run time set midnight
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. unless entity @e[type=armor_stand, tag=blackout] run summon armor_stand ~ ~ ~ {Tags:[blackout], Invulnerable: 1b, Invisible: 1b}



execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. as @a at @s run particle mycelium ~ ~5 ~ 10 10 10 0 100 normal @s
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. as @a run function tag:bg_processes/stopmusic
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. run bossbar set event players @a
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches 1000.. run scoreboard players remove timer event.current_major_event 40
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches 1000.. as @a run scoreboard players add timer event.current_major_event 6
#execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches 1000.. if score playercount consts matches 5.. run scoreboard players add timer event.current_major_event 38
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches 1000.. store result bossbar event value run scoreboard players get timer event.current_major_event
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches ..999 run scoreboard players set game event.current_major_event 0

execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. run scoreboard players set @a effect.glow 0
execute if score game event.current_major_event matches 2 unless score animation event.current_major_event matches 1.. if score timer event.current_major_event matches 1200.. run effect give @a darkness 2 0 true