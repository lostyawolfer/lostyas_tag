# portable teleport



execute as @s[scores={ab.use.trigger=1..}] if score @s ab.use2 matches 1.. run tag @s add temp
execute as @s[scores={ab.use.trigger=1..}] if score @s ab.use2 matches 1.. run scoreboard players set @s ab.use.trigger 0

execute as @s[tag=temp] run scoreboard players reset @s ab.use2
execute as @s[tag=temp] run scoreboard players set @s ab.use 40
execute as @s[tag=temp] run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 2
execute as @s[tag=temp] run effect give @s darkness 3 0 true
execute as @s[tag=temp] run tag @s remove temp

execute as @s[scores={ab.use2=1}] run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
execute as @s[scores={ab.use2=1}] run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 2
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 1 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_1]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 2 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_2]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 3 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_3]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 4 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_4]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 5 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_5]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 6 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_6]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 7 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_7]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 8 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_8]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 9 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_9]
execute as @s[scores={ab.use2=1}] if score @s tp.id matches 10 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_10]
execute as @s[scores={ab.use2=1}] run scoreboard players reset @s ab.use2




execute as @s[scores={ab.use.trigger=1..}] unless score @s ab.use2 matches 1.. run tag @s add temp2
execute as @s[scores={ab.use.trigger=1..}] unless score @s ab.use2 matches 1.. run scoreboard players set @s ab.use.trigger 0
execute as @s[tag=temp2] run scoreboard players set @s ab.cd 1800
execute as @s[tag=temp2] run scoreboard players set @s ab.use2 1200
execute as @s[tag=temp2] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 2 1
execute as @s[tag=temp2] if score @s tp.id matches 1 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_1"]}
execute as @s[tag=temp2] if score @s tp.id matches 2 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_2"]}
execute as @s[tag=temp2] if score @s tp.id matches 3 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_3"]}
execute as @s[tag=temp2] if score @s tp.id matches 4 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_4"]}
execute as @s[tag=temp2] if score @s tp.id matches 5 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_5"]}
execute as @s[tag=temp2] if score @s tp.id matches 6 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_6"]}
execute as @s[tag=temp2] if score @s tp.id matches 7 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_7"]}
execute as @s[tag=temp2] if score @s tp.id matches 8 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_8"]}
execute as @s[tag=temp2] if score @s tp.id matches 9 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_9"]}
execute as @s[tag=temp2] if score @s tp.id matches 10 run summon armor_stand ~ ~ ~ {Invisible: 1b, Tags: ["ab.active.8", "player_id_10"]}
execute as @s[tag=temp2] run tag @s remove temp2



execute as @s[scores={ab.use=10..}] run particle portal ~ ~1 ~ 0 0 0 3 20 force @a

execute as @s[scores={ab.use=1}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=1}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_1]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=2}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_2]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=3}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_3]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=4}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_4]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=5}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_5]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=6}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_6]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=7}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_7]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=8}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_8]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=9}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_9]
execute as @s[scores={ab.use=1}] run tp @s[scores={tp.id=10}] @e[type=armor_stand, limit=1, tag=ab.active.8, tag=player_id_10]
execute as @s[scores={ab.use=1}] run particle reverse_portal ~ ~1 ~ 0 0 0 1 100 force @a
execute as @s[scores={ab.use=1}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute as @s[scores={ab.use=1}] if score @s tp.id matches 1 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_1]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 2 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_2]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 3 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_3]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 4 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_4]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 5 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_5]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 6 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_6]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 7 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_7]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 8 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_8]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 9 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_9]
execute as @s[scores={ab.use=1}] if score @s tp.id matches 10 run kill @e[type=armor_stand, tag=ab.active.8, tag=player_id_10]



execute as @e[type=armor_stand, tag=ab.active.8] at @s run playsound block.amethyst_block.chime player @a ~ ~ ~ .5
execute as @e[type=armor_stand, tag=ab.active.8, nbt={OnGround:1b}] at @s run particle end_rod ~ ~.8 ~ 0 .25 0 0 5 force
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_1] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=2..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=1}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_2] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=3..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..2}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_3] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=4..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..3}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_4] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=5..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..4}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_5] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=6..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..5}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_6] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=7..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..6}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_7] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=8..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..7}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_8] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=9..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=9}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=9}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=..8}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_9] at @s run particle dust_color_transition{from_color:14745855, to_color:6422783, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=10..}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle dust_color_transition{from_color:2883328, to_color:65514, scale:1} ~ ~ ~ .4 0 .4 0 20 force @a[scores={tp.id=10}]
execute as @e[type=armor_stand, tag=ab.active.8, tag=player_id_10] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a[scores={tp.id=10}]
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



# execute as @s[scores={ab.use=1..}] run attribute @s gravity modifier add tag:superspeed 1200 add_value
# execute as @s[scores={ab.use=1..}] run scoreboard players set @s effect.speed 2
# execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.bhop2 100
# execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.bhop 100
# execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.timer 100
# execute as @s[scores={ab.use=1..}, nbt={OnGround:0b}] run scoreboard players add @s ab.use 1
# execute as @s[scores={ab.use=1..}] run particle dust{color:63487, scale:1} ~ ~1 ~ .3 .5 .3 0 20

# execute as @s[scores={ab.use=1..}] if score @s effect.strong_levitation matches 1.. run scoreboard players set @s ab.use 0

# execute as @s[scores={ab.use=-1}] run attribute @s gravity modifier remove tag:superspeed
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2