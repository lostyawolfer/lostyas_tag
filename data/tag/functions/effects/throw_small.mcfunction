## Throw-up effect (but minimized)
#  (like when you step into lava)


execute as @a[scores={effect.throw_small=1..}] at @s run effect give @s minecraft:levitation 1 50 true
execute as @a[scores={effect.throw_small=1..}] at @s run scoreboard players remove @s effect.throw_small 1


# Deactivation
execute as @a[scores={effect.throw_small=0}] at @s run effect clear @s minecraft:levitation
execute as @a[scores={effect.throw_small=0}] at @s run scoreboard players reset @s effect.throw_small