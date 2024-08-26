execute as @a unless score @s ab.p.id matches 0.. run scoreboard players set @s ab.p.id 0
execute as @a unless score @s ab.p.id matches 2 run tag @s remove air_raid_invulnerable


execute as @a[scores={ab.p.id=1}] at @s run function tag:passives/1
execute as @a[scores={ab.p.id=2}] at @s run function tag:passives/2
execute as @a[scores={ab.p.id=3}] at @s run function tag:passives/3
execute as @a[scores={ab.p.id=4}] at @s run function tag:passives/4
execute as @a[scores={ab.p.id=5}] at @s run function tag:passives/5
execute as @a[scores={ab.p.id=6}] at @s run function tag:passives/6
execute as @a[scores={ab.p.id=7}] at @s run function tag:passives/7
execute as @a[scores={ab.p.id=8}] at @s run function tag:passives/8