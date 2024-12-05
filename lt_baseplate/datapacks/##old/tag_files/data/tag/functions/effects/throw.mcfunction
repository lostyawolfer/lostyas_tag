## Throw-up effect
#  (like when you step on a beacon)


execute as @a[scores={effect.throw=1..}] at @s run effect give @s minecraft:levitation 1 100 true
execute as @a[scores={effect.throw=1..}] at @s run scoreboard players remove @s effect.throw 1


# Deactivation
execute as @a[scores={effect.throw=0}] at @s run effect clear @s minecraft:levitation
execute as @a[scores={effect.throw=0}] at @s run scoreboard players reset @s effect.throw