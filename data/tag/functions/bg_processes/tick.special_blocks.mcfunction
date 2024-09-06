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


## Beacon
# sound
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon unless score @s effect.invis matches 1.. run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon if score @s effect.invis matches 1.. run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ .5 .7
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon unless score @s effect.invis matches 1.. run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~
# flash
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon unless score @s effect.invis matches 1.. run particle minecraft:flash ~ ~ ~
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon if score @s effect.invis matches 1.. run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal @a
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon unless score @s effect.invis matches 1.. run particle minecraft:end_rod ~ ~.5 ~ .5 0 .5 0 75
# jump
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon run scoreboard players set @s effect.throw 3
execute as @a[gamemode=!spectator] at @s if block ~ ~-.1 ~ minecraft:beacon run tp @s ~ ~1.5 ~




## Throw you if you are in lava
execute as @a[gamemode=adventure] at @s if block ~ ~-.1 ~ lava run playsound entity.player.hurt_on_fire player @a ~ ~ ~
execute as @a[gamemode=adventure] at @s if block ~ ~-.1 ~ lava run scoreboard players set @s effect.throw_small 2
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava unless score @s effect.glow matches 5.. run scoreboard players set @s effect.glow 5
# teleport up
# (used multiple same functions instead of one strong to not overflow but nicely put the player just over it)
# (there are 20 of those, meaning it will tp you up for up to 10 blocks per tick)
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s ~ ~.5 ~