execute as @a[gamemode=adventure] at @s if block ~ ~-.5 ~ #tag:forbidden_to_stand_on run function tag:bg_processes/tp_back/outside_map
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #tag:forbidden_to_stand_on run function tag:bg_processes/tp_back/outside_map
execute as @a[gamemode=adventure, predicate=tag:under] at @s run function tag:bg_processes/tp_back/outside_map
execute as @a[gamemode=adventure, predicate=tag:over] at @s run function tag:bg_processes/tp_back/outside_map

execute as @a[gamemode=adventure] at @s unless block ~ ~ ~ #tag:allowed_to_stand_in unless block ~ ~1 ~ #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks


execute as @a[gamemode=adventure] at @s unless block ~.3 ~ ~ #tag:allowed_to_stand_in unless block ~.3 ~1 ~ #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks
execute as @a[gamemode=adventure] at @s unless block ~-.3 ~ ~ #tag:allowed_to_stand_in unless block ~-.3 ~1 ~ #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks

execute as @a[gamemode=adventure] at @s unless block ~.3 ~ ~.3 #tag:allowed_to_stand_in unless block ~.3 ~1 ~.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks
execute as @a[gamemode=adventure] at @s unless block ~-.3 ~ ~.3 #tag:allowed_to_stand_in unless block ~-.3 ~1 ~.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks

execute as @a[gamemode=adventure] at @s unless block ~.3 ~ ~-.3 #tag:allowed_to_stand_in unless block ~.3 ~1 ~-.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks
execute as @a[gamemode=adventure] at @s unless block ~-.3 ~ ~-.3 #tag:allowed_to_stand_in unless block ~-.3 ~1 ~-.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks

execute as @a[gamemode=adventure] at @s unless block ~ ~ ~.3 #tag:allowed_to_stand_in unless block ~ ~1 ~.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks
execute as @a[gamemode=adventure] at @s unless block ~ ~ ~.3 #tag:allowed_to_stand_in unless block ~ ~1 ~.3 #tag:allowed_to_stand_in run function tag:bg_processes/tp_back/inside_blocks


execute as @a[gamemode=adventure] at @s unless block ~ ~ ~ #tag:allowed_to_stand_in if block ~ ~ ~ #tag:lenient_standing_limit run function tag:bg_processes/tp_back/inside_blocks_lenient


execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #tag:allowed_to_stand_in if block ~.29 ~ ~.29 #tag:allowed_to_stand_in if block ~.29 ~ ~-.29 #tag:allowed_to_stand_in if block ~ ~ ~.29 #tag:allowed_to_stand_in unless block ~ ~ ~ #tag:lenient_standing_limit run scoreboard players reset @s inside_blocks
execute as @a[tag=setting_up_id] run function tag:bg_processes/tp_back/get_id


execute as @a[scores={tp_outmap_anim=1..}] at @s run scoreboard players remove @s tp_outmap_anim 1

execute as @a[scores={tp_outmap_anim=20}] at @s run title @s title ""
execute as @a[scores={tp_outmap_anim=20}] at @s run title @s times 0 15 3
execute as @a[scores={tp_outmap_anim=20}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFFFF"}
execute as @a[scores={tp_outmap_anim=19}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFFDC"}
execute as @a[scores={tp_outmap_anim=18}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF9E"}
execute as @a[scores={tp_outmap_anim=17}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF5F"}
execute as @a[scores={tp_outmap_anim=16}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF21"}
execute as @a[scores={tp_outmap_anim=15}] at @s run title @s subtitle {"translate":"title.outside_map","color":"#FFFF00"}


execute as @a[scores={tp_inside_anim=1..}] at @s run scoreboard players remove @s tp_inside_anim 1

execute as @a[scores={tp_inside_anim=20}] at @s run title @s title ""
execute as @a[scores={tp_inside_anim=20}] at @s run title @s times 0 15 3
execute as @a[scores={tp_inside_anim=20}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFFFF"}
execute as @a[scores={tp_inside_anim=19}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFFDC"}
execute as @a[scores={tp_inside_anim=18}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFF9E"}
execute as @a[scores={tp_inside_anim=17}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFF5F"}
execute as @a[scores={tp_inside_anim=16}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFF21"}
execute as @a[scores={tp_inside_anim=15}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFF00"}


execute as @a[scores={tp_inside_anim2=1..}] at @s run scoreboard players remove @s tp_inside_anim2 1

execute as @a[scores={tp_inside_anim2=20}] at @s run title @s title ""
execute as @a[scores={tp_inside_anim2=20}] at @s run title @s times 0 15 20
execute as @a[scores={tp_inside_anim2=20}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFFFFF"}
execute as @a[scores={tp_inside_anim2=19}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FFDCDC"}
execute as @a[scores={tp_inside_anim2=18}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FF9E9E"}
execute as @a[scores={tp_inside_anim2=17}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FF5F5F"}
execute as @a[scores={tp_inside_anim2=16}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FF2121"}
execute as @a[scores={tp_inside_anim2=15}] at @s run title @s subtitle {"translate":"title.in_blocks","color":"#FF0000"}
