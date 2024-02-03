## Speed effect
#  (like in speed ability)


execute as @a[scores={effect.speed=1..}] at @s run effect give @s minecraft:speed 1 30 true
execute as @a[scores={effect.speed=1..}] at @s run scoreboard players remove @s effect.speed 1


# Deactivation
execute as @a[scores={effect.speed=0}] at @s run effect clear @s minecraft:speed
execute as @a[scores={effect.speed=0}] at @s run scoreboard players reset @s effect.speed