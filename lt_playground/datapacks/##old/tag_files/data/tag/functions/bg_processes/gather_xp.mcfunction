execute as @a[scores={hunger=..19}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1
execute as @a[scores={hunger=..19}] at @s run xp add @s 1
execute as @a[scores={hunger=..19}] at @s run effect give @s minecraft:hunger 1 40 true
execute as @a[scores={hunger=..19}] at @s run effect give @s minecraft:saturation 1 0 true