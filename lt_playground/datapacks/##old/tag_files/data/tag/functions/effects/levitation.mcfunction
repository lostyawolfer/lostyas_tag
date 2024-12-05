## Levitation effect
#  (unused yet)


execute as @a[scores={effect.levitation=1..}] at @s run effect give @s minecraft:levitation 1 10 true
execute as @a[scores={effect.levitation=1..}] at @s run scoreboard players remove @s effect.levitation 1


# Deactivation
execute as @a[scores={effect.levitation=0}] at @s run effect clear @s minecraft:levitation
execute as @a[scores={effect.levitation=0}] at @s run scoreboard players reset @s effect.levitation