execute as @a unless score @s ab.id matches 0.. run scoreboard players set @s ab.id 0



execute as @a[scores={ab.id=1}] at @s run function tag:abilities/1
execute as @a[scores={ab.id=2}] at @s run function tag:abilities/2
execute as @a[scores={ab.id=3}] at @s run function tag:abilities/3
execute as @a[scores={ab.id=4}] at @s run function tag:abilities/4
execute as @a[scores={ab.id=5}] at @s run function tag:abilities/5
execute as @a[scores={ab.id=6}] at @s run function tag:abilities/6
execute as @a[scores={ab.id=7}] at @s run function tag:abilities/7