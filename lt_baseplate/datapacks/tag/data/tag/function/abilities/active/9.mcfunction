# timestop


execute as @s[scores={ab.use.trigger=1..}] if score @s ab.use2 matches 1.. run scoreboard players set @s ab.use.trigger 0


execute as @s[scores={ab.use2=1}] run scoreboard players set @s ab.use 60
execute as @s[scores={ab.use2=1}] run tag @s add ab.active.9
execute as @s[scores={ab.use2=1}] run scoreboard players reset @s ab.use2




execute as @s[scores={ab.use.trigger=1..}] unless score @s ab.use2 matches 1.. run tag @s add temp2
execute as @s[scores={ab.use.trigger=1..}] unless score @s ab.use2 matches 1.. run scoreboard players set @s ab.use.trigger 0
execute as @s[tag=temp2] run scoreboard players set @s ab.cd 1400
execute as @s[tag=temp2] run scoreboard players set @s ab.use2 20
execute as @s[tag=temp2] run effect give @a[tag=!temp2] slow_falling 2 0 true
execute as @s[tag=temp2] run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 20 0 1
execute as @s[tag=temp2] at @s run particle nautilus ~ ~1 ~ 0 0 0 1 100 force @a
execute as @s[tag=temp2] at @s run effect give @a[tag=!temp2] slowness 10 2 true
execute as @s[tag=temp2] at @s run effect give @a darkness 2 2 true
execute as @s[tag=temp2] run tag @s remove temp2


execute as @s[scores={ab.use2=1..}] if score @s effect.downed matches 1.. run scoreboard players set @s ab.use -1
execute as @s[scores={ab.use2=1..}] if score @s effect.downed matches 1.. run scoreboard players reset @s ab.use2

execute as @s[scores={ab.use2=1..}] unless entity @s[gamemode=adventure, tag=!safezone] run scoreboard players set @s ab.use -1
execute as @s[scores={ab.use2=1..}] unless entity @s[gamemode=adventure, tag=!safezone] run scoreboard players reset @s ab.use2


execute as @s[tag=ab.active.9] at @s run effect give @a[tag=!ab.active.9] blindness 10 0 true
execute as @s[tag=ab.active.9] at @s run effect give @a[tag= ab.active.9] darkness 2 50 true
execute as @s[tag=ab.active.9] at @s run effect give @a[tag=!ab.active.9] slowness 10 50 true
execute as @s[tag=ab.active.9] at @s as @a unless score @s effect.downed matches 1.. run scoreboard players add @s[tag=!ab.active.9] ab.cd 1
execute as @s[tag=ab.active.9] at @s as @a unless score @s effect.downed matches 1.. run scoreboard players set @s[tag=!ab.active.9, scores={ab.cd=..5}] ab.cd 5
execute as @s[tag=ab.active.9] at @s if score kill_timer server matches ..600 unless score game server matches 7 run scoreboard players add @a[tag=!ab.active.9] ab.cd 1
execute as @s[tag=ab.active.9] at @s as @a unless score @s effect.downed matches 1.. run scoreboard players add @s[tag=!ab.active.9] p.cd 1
execute as @s[tag=ab.active.9] at @s as @a unless score @s effect.downed matches 1.. run scoreboard players set @s[tag=!ab.active.9, scores={p.cd=..5}] p.cd 5
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[scores={effect.downed=1..}] effect.downed 1
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[scores={effect.glowing=1..}] effect.glowing 1
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[scores={effect.invisibility=1..}] effect.invisibility 1
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[scores={effect.strong_levitation=1..}] effect.strong_levitation 1
execute as @s[tag=ab.active.9] at @s run worldborder warning distance 2147000000
execute as @s[tag=ab.active.9] at @s run effect give @a weakness 10 50 true
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[tag=!ab.active.9, scores={ab.use=1..}] ab.use 1
execute as @s[tag=ab.active.9] at @s run scoreboard players add @a[tag=!ab.active.9, scores={ab.use2=1..}] ab.use2 1
execute as @s[tag=ab.active.9] as @a[tag=!ab.active.9] at @s run tp @s @s



execute as @s[scores={ab.use=-1}] run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 20 1 1
execute as @s[scores={ab.use=-1}] run particle reverse_portal ~ ~1 ~ 0 0 0 1 100 force @a
execute as @s[scores={ab.use=-1}] run effect clear @a blindness
execute as @s[scores={ab.use=-1}] run effect clear @a slowness
execute as @s[scores={ab.use=-1}] run effect clear @a darkness
execute as @s[scores={ab.use=-1}] run effect clear @a weakness
execute as @s[scores={ab.use=-1}] run effect give @a blindness 1 0 true
execute as @s[scores={ab.use=-1}] run worldborder warning distance 0
execute as @s[scores={ab.use=-1}] run tag @s remove ab.active.9



execute as @e[type=armor_stand, tag=ab.active.8] at @s run playsound block.amethyst_block.chime player @a ~ ~ ~ .5
execute as @e[type=armor_stand, tag=ab.active.8, nbt={OnGround:1b}] at @s run particle end_rod ~ ~.8 ~ 0 .25 0 0 5 force
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=2..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=3..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=4..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=5..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=6..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=7..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=8..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=9..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=9}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=9}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=10..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=10}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle happy_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={tp.id=10}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..9}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=11..}]



execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] unless entity @a[scores={tp.id=1}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] unless entity @a[scores={tp.id=2}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] unless entity @a[scores={tp.id=3}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] unless entity @a[scores={tp.id=4}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] unless entity @a[scores={tp.id=5}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] unless entity @a[scores={tp.id=6}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] unless entity @a[scores={tp.id=7}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] unless entity @a[scores={tp.id=8}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] unless entity @a[scores={tp.id=9}, tag=!safezone] run kill @s
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] unless entity @a[scores={tp.id=10}, tag=!safezone] run kill @s


execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2