## Tp to spawn if inside end portal frame
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:end_portal_frame run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 .07 50
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ minecraft:end_portal_frame run tp @s 5 56 -9


## Tp to spawn if found jigsow below
#  2 blocks
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:jigsaw run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 .07 50
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:jigsaw run tp @s 5 56 -9
#  1 block
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:jigsaw run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 .07 50
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:jigsaw run tp @s 5 56 -9