#  Sound
execute as @a[gamemode=!spectator] at @s if block ~ ~-.5 ~ minecraft:beacon run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
execute as @a[gamemode=!spectator] at @s if block ~ ~-.5 ~ minecraft:beacon run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~

#  Flash
execute as @a[gamemode=!spectator] at @s if block ~ ~-.5 ~ minecraft:beacon run particle minecraft:flash ~ ~ ~

#  Jump
execute as @a[gamemode=!spectator] at @s if block ~ ~-.5 ~ minecraft:beacon run scoreboard players set @s effect.throw 3
execute as @a[gamemode=!spectator] at @s if block ~ ~-.5 ~ minecraft:beacon run tp @s ~ ~1.5 ~