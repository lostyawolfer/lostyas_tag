scoreboard objectives add temp.armor_stand_coords dummy
summon armor_stand ~ ~ ~ {Tags:["spawn", "game", "creating"], NoGravity:1b, Invisible:1b}
tp @e[type=armor_stand, tag=creating] @s



execute as @e[type=armor_stand, tag=creating] at @s store result score x temp.armor_stand_coords run data get entity @s Pos[0] 1
execute as @e[type=armor_stand, tag=creating] at @s store result score y temp.armor_stand_coords run data get entity @s Pos[1] 1
execute as @e[type=armor_stand, tag=creating] at @s store result score z temp.armor_stand_coords run data get entity @s Pos[2] 1

execute as @e[type=armor_stand, tag=creating] at @s store result score p temp.armor_stand_coords run data get entity @s Rotation[0] 1


scoreboard players operation x temp.armor_stand_coords *= 10 consts
scoreboard players operation y temp.armor_stand_coords *= 10 consts
scoreboard players operation z temp.armor_stand_coords *= 10 consts

scoreboard players add x temp.armor_stand_coords 5
scoreboard players add z temp.armor_stand_coords 5

execute as @e[type=armor_stand, tag=creating] at @s store result entity @s Pos[0] double .1 run scoreboard players get x temp.armor_stand_coords
execute as @e[type=armor_stand, tag=creating] at @s store result entity @s Pos[1] double .1 run scoreboard players get y temp.armor_stand_coords
execute as @e[type=armor_stand, tag=creating] at @s store result entity @s Pos[2] double .1 run scoreboard players get z temp.armor_stand_coords


execute as @e[type=armor_stand, tag=creating] at @s if score p temp.armor_stand_coords matches -145..-45 run data merge entity @s {Rotation: [-90f]}

execute as @e[type=armor_stand, tag=creating] at @s if score p temp.armor_stand_coords matches -180..-145 run data merge entity @s {Rotation: [-180f]}
execute as @e[type=armor_stand, tag=creating] at @s if score p temp.armor_stand_coords matches 145..180 run data merge entity @s {Rotation: [-180f]}

execute as @e[type=armor_stand, tag=creating] at @s if score p temp.armor_stand_coords matches 45..145 run data merge entity @s {Rotation: [90f]}

execute as @e[type=armor_stand, tag=creating] at @s if score p temp.armor_stand_coords matches -45..45 run data merge entity @s {Rotation: [0f]}



execute as @e[type=armor_stand, tag=creating] at @s positioned ~ ~ ~ run particle flame ~ ~1 ~ .3 .5 .3 .1 50
execute as @e[type=armor_stand, tag=creating] run tag @s remove creating



scoreboard objectives remove temp.armor_stand_coords