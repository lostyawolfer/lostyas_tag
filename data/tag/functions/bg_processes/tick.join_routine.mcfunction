# bossbar notification that someone joined
execute store result bossbar joined value run scoreboard players get joined joined
execute if score joined joined matches -2.. run scoreboard players remove joined joined 1
execute if score joined joined matches -2.. run bossbar set joined visible true
execute if score joined joined matches -2.. run bossbar set joined players @a
execute unless score joined joined matches -2.. run bossbar set joined visible false

# teleport to nearest safezone
execute as @a[tag=!joined.sound, tag=!safezoned] in minecraft:lt_playground at @s run tp @s @e[type=armor_stand,tag=spawn,sort=nearest,limit=1,distance=..200]

# get an id for teleporting player back from outside the map
execute as @a[tag=!joined.sound] at @s run function tag:bg_processes/tp_back/get_id
execute as @a[tag=!joined.sound] at @s run team join y.safezoned @s
execute as @a[tag=!joined.sound] at @s run tag @s add joined.sound


# letting the game know that the player has, in fact, joined the game
execute as @a[scores={left=1..}] at @s run tag @s remove joined.sound
execute as @a[scores={left=1..}] at @s run scoreboard players reset @s left

# sound and team handling
execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 2
execute as @a[tag=!joined.sound] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 99999 1.5
execute as @a[tag=!joined.sound] at @s run team leave @s
execute as @a[tag=!joined.sound] at @s run scoreboard players add @s playtime 0
execute as @a[tag=!joined.sound] at @s run clear @s
execute as @a[tag=!joined.sound] at @s run scoreboard players set @s current_menu_page 0
execute as @a[tag=!joined.sound] at @s run bossbar set joined name [{"selector":"@s","color":"yellow"},{"translate":"bossbar.joined_the_game"}]
execute as @a[tag=!joined.sound] at @s run scoreboard players set joined joined 60
execute as @a[tag=!joined.sound] at @s run effect give @s invisibility 1 0 true
execute as @a[tag=!joined.sound] at @s run stopsound @s
execute as @a[tag=!joined.sound] at @s run gamemode adventure @s

# spawning armor stands cosmetics
# execute as @e[type=armor_stand, tag=spawn] at @s positioned ~ ~ ~ run particle dust_color_transition 1 1 0 1 .75 1 .5 ~ ~ ~ .2 0 .2 0 1
# execute as @e[type=armor_stand, tag=spawn] at @s positioned ~ ~-1.3 ~ positioned ^ ^ ^.3 run particle dust_color_transition 0 0 1 .5 0 0 1 ~ ~1.3 ~ 0 0 0 0 1
