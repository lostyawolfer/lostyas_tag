$execute unless entity @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather] run summon armor_stand 0 0 0 {Tags:["bad_weather.$(id)", "bad_weather"], Invisible: 1b}
$execute as @a[scores={tp.id=$(id)}] at @s run spreadplayers ~ ~ 0 5 false @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather]
$execute if score e.bad_weather server matches 450.. as @a[scores={tp.id=$(id)}] at @s if entity @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather, distance=..0.75] run function tag:events/bad_weather.lightning


$execute unless entity @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather2] run summon armor_stand 0 0 0 {Tags:["bad_weather.$(id)", "bad_weather2"], Invisible: 1b}
$execute as @a[scores={tp.id=$(id)}] at @s run spreadplayers ~ ~ 0 1 false @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather2]
# $execute as @a[scores={tp.id=$(id)}] at @s if entity @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather2, distance=..0.75] run effect give @s darkness 2 0 true
$execute as @a[scores={tp.id=$(id)}] at @s unless score @s effect.invisibility matches 1.. if entity @e[type=armor_stand, tag=bad_weather.$(id), tag=bad_weather2, distance=..2] run particle minecraft:electric_spark ~ ~1 ~ .3 .5 .3 .5 1 normal