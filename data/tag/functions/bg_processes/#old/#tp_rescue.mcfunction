## Set session ID
scoreboard players set @a[scores={session_id=11..}] session_id 0
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..10}] run scoreboard players set @s session_id 0
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..9}] unless entity @a[scores={session_id=10}] run scoreboard players set @s session_id 10
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..8}] unless entity @a[scores={session_id=9}] run scoreboard players set @s session_id 9
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..7}] unless entity @a[scores={session_id=8}] run scoreboard players set @s session_id 8
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..6}] unless entity @a[scores={session_id=7}] run scoreboard players set @s session_id 7
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..5}] unless entity @a[scores={session_id=6}] run scoreboard players set @s session_id 6
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..4}] unless entity @a[scores={session_id=5}] run scoreboard players set @s session_id 5
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..3}] unless entity @a[scores={session_id=4}] run scoreboard players set @s session_id 4
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1..2}] unless entity @a[scores={session_id=3}] run scoreboard players set @s session_id 3
execute as @a at @s unless score @s session_id matches 1.. if entity @a[scores={session_id=1}] unless entity @a[scores={session_id=2}] run scoreboard players set @s session_id 2
execute as @a at @s unless score @s session_id matches 1.. unless entity @a[scores={session_id=1}] run scoreboard players set @s session_id 1




## Detection

#  Outside of map
execute as @a[gamemode=adventure] at @s if block ~ ~-.4 ~ sandstone run scoreboard players set @s tp_outmap 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:structure_void run scoreboard players set @s tp_outmap 1
execute as @a[gamemode=adventure] at @s if block ~ ~-.4 ~ command_block run scoreboard players set @s tp_outmap 1
execute as @a[gamemode=adventure] at @s if block ~ ~-.4 ~ chain_command_block run scoreboard players set @s tp_outmap 1
execute as @a[gamemode=adventure] at @s if block ~ ~-.4 ~ repeating_command_block run scoreboard players set @s tp_outmap 1
execute as @a[gamemode=adventure] at @s unless block ~ ~-.4 ~ sandstone unless block ~ ~-.4 ~ command_block unless block ~ ~-.4 ~ chain_command_block unless block ~ ~-.4 ~ repeating_command_block unless block ~ ~ ~ structure_void run scoreboard players set @s tp_outmap 0
execute as @a[gamemode=!adventure] run scoreboard players set @s tp_outmap -1

#  In blocks
#  > Restore health
effect give @a[scores={tp_inblocks_tick=10..}] minecraft:instant_health 1 10 true
scoreboard players reset @a[scores={tp_inblocks_tick=10..}] tag.recieve
#  > Inblock time
execute as @a[gamemode=adventure] at @s unless block ~ ~ ~ light unless block ~ ~ ~ air unless block ~ ~ ~ lantern unless block ~ ~ ~ soul_lantern unless block ~ ~ ~ structure_void unless block ~ ~ ~ #slabs unless block ~ ~ ~ #minecraft:stairs unless block ~ ~ ~ chain unless block ~ ~ ~ #minecraft:banners unless block ~ ~ ~ #minecraft:beds unless block ~ ~ ~ #minecraft:buttons unless block ~ ~ ~ #minecraft:campfires unless block ~ ~ ~ #minecraft:bee_growables unless block ~ ~ ~ #minecraft:cauldrons unless block ~ ~ ~ #minecraft:climbable unless block ~ ~ ~ #doors unless block ~ ~ ~ #minecraft:portals unless block ~ ~ ~ #minecraft:pressure_plates unless block ~ ~ ~ #minecraft:trapdoors unless block ~ ~ ~ #minecraft:flowers unless block ~ ~ ~ #minecraft:signs unless block ~ ~ ~ #minecraft:wool_carpets unless block ~ ~ ~ minecraft:green_stained_glass_pane unless block ~ ~ ~ minecraft:red_stained_glass_pane unless block ~ ~ ~ torch unless block ~ ~ ~ wall_torch unless block ~ ~ ~ soul_torch unless block ~ ~ ~ #fire unless block ~ ~ ~ minecraft:soul_wall_torch unless block ~ ~ ~ redstone_torch unless block ~ ~ ~ redstone_wall_torch unless block ~ ~ ~ minecraft:tripwire unless block ~ ~ ~ #minecraft:fences unless block ~ ~ ~ #minecraft:fence_gates unless block ~ ~ ~ minecraft:piston_head unless block ~ ~ ~ piston unless block ~ ~ ~ minecraft:sticky_piston unless block ~ ~ ~ #walls unless block ~ ~ ~ minecraft:grindstone unless block ~ ~ ~ minecraft:daylight_detector unless block ~ ~ ~ grass unless block ~ ~ ~ cobweb unless block ~ ~ ~ minecraft:iron_bars unless block ~ ~ ~ powder_snow unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ moving_piston unless block ~ ~ ~ end_rod unless block ~ ~ ~ lever unless block ~ ~ ~ water run scoreboard players add @s tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ air run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ air run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:slabs run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:slabs run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:stairs run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:stairs run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ powder_snow run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ powder_snow run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ cave_air run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ cave_air run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ moving_piston run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ moving_piston run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ void_air run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ void_air run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lever run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lever run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ end_rod run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ end_rod run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ water run scoreboard players remove @s[scores={tp_inblocks_tick=2..}] tp_inblocks_tick 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ water run scoreboard players remove @s[scores={tp_inblocks_tick=1}] tp_inblocks_tick 1

execute as @a[scores={tp_inblocks_tick=15..},gamemode=adventure] run scoreboard players set @s tp_inblocks_tick 10
execute as @a[gamemode=!adventure] at @s run scoreboard players set @s tp_inblocks_tick -1
execute as @a[gamemode=adventure] at @s run scoreboard players set @s[scores={tp_inblocks_tick=-1}] tp_inblocks_tick 0
#  > Activate
execute as @a[scores={tp_inblocks_tick=10..},gamemode=adventure] run scoreboard players set @s tp_inblocks 1
execute as @a[scores={tp_inblocks_tick=..7},gamemode=adventure] run scoreboard players set @s tp_inblocks 0
execute as @a[gamemode=!adventure] run scoreboard players set @s tp_inblocks -1




## Teleportation

#  Stands to players
execute as @a[scores={session_id=1},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=1,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=2},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=2,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=3},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=3,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=4},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=4,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=5},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=5,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=6},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=6,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=7},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=7,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=8},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=8,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=9},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=9,type=minecraft:armor_stand] ~ ~320 ~
execute as @a[scores={session_id=10},gamemode=adventure] as @s[scores={tp_outmap=0}] as @s[scores={tp_inblocks_tick=0}] at @s unless block ~ ~-.2 ~ air unless block ~ ~-.2 ~ cave_air unless block ~ ~-.2 ~ void_air unless block ~ ~-.2 ~ moving_piston unless block ~ ~-1 ~ minecraft:structure_block unless block ~ ~-2 ~ minecraft:structure_block run tp @e[tag=10,type=minecraft:armor_stand] ~ ~320 ~

#  Players to stands [outside of map]
execute as @a[scores={tp_outmap=1}] at @s run scoreboard players set @s tp_outmap_anim 21
execute as @a[scores={tp_outmap=1}] at @s run damage @s 1 sweet_berry_bush
execute as @a[scores={tp_outmap_anim=1..}] at @s run scoreboard players remove @s tp_outmap_anim 1
execute as @a[scores={tp_outmap_anim=20}] at @s run title @s title ""
execute as @a[scores={tp_outmap_anim=20}] at @s run title @s times 0 15 3
execute as @a[scores={tp_outmap_anim=20}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFFFF"}
execute as @a[scores={tp_outmap_anim=19}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFFDC"}
execute as @a[scores={tp_outmap_anim=18}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF9E"}
execute as @a[scores={tp_outmap_anim=17}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF5F"}
execute as @a[scores={tp_outmap_anim=16}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF21"}
execute as @a[scores={tp_outmap_anim=15}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF00"}
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=1}] at @e[tag=1,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=2}] at @e[tag=2,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=3}] at @e[tag=3,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=3}] at @e[tag=3,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=5}] at @e[tag=5,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=6}] at @e[tag=6,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=7}] at @e[tag=7,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=8}] at @e[tag=8,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=9}] at @e[tag=9,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] as @s[scores={session_id=10}] at @e[tag=10,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_outmap=1}] at @s run particle block sandstone ~ ~.2 ~ .2 .2 .2 0 20 normal @s
execute as @a[scores={tp_outmap=1}] at @s run particle block sandstone ~ ~1 ~ .2 .4 .2 0 40 normal @a[scores={tp_outmap=0}]

#  Players to stands [in blocks]
execute as @a[scores={tp_inblocks=1}] at @s run title @s actionbar {"translate":"title.in_blocks","color":"gold"}
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=1}] at @e[tag=1,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=2}] at @e[tag=2,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=3}] at @e[tag=3,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=4}] at @e[tag=4,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=5}] at @e[tag=5,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=6}] at @e[tag=6,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=7}] at @e[tag=7,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=8}] at @e[tag=8,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=9}] at @e[tag=9,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] as @s[scores={session_id=10}] at @e[tag=10,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={tp_inblocks=1}] at @s run particle minecraft:sonic_boom ~ ~1 ~ .3 .5 .3 .1 5 force

#  Players to stands [/trigger rescue]
execute as @a[scores={rescue=1}] at @s run title @s actionbar {"text":"Спасаю!","color":"red"}
execute as @a[scores={rescue=1}] as @s[scores={session_id=1}] at @e[tag=1,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=2}] at @e[tag=2,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=3}] at @e[tag=3,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=3}] at @e[tag=3,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=5}] at @e[tag=5,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=6}] at @e[tag=6,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=7}] at @e[tag=7,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=8}] at @e[tag=8,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=9}] at @e[tag=9,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] as @s[scores={session_id=10}] at @e[tag=10,type=armor_stand] run tp @s ~ ~-320 ~
execute as @a[scores={rescue=1}] at @s run particle block sandstone ~ ~.2 ~ .2 .2 .2 0 20 normal @s
execute as @a[scores={rescue=1}] at @s run scoreboard players set @s rescue 0
