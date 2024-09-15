## Freeze effect


execute as @a[scores={effect.freeze=1..}] at @s run tp @s @s
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=1}] at @e[tag=tp, type=armor_stand, scores={tp.id=1}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=2}] at @e[tag=tp, type=armor_stand, scores={tp.id=2}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=3}] at @e[tag=tp, type=armor_stand, scores={tp.id=3}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=4}] at @e[tag=tp, type=armor_stand, scores={tp.id=4}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=5}] at @e[tag=tp, type=armor_stand, scores={tp.id=5}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=6}] at @e[tag=tp, type=armor_stand, scores={tp.id=6}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=7}] at @e[tag=tp, type=armor_stand, scores={tp.id=7}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=8}] at @e[tag=tp, type=armor_stand, scores={tp.id=8}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=9}] at @e[tag=tp, type=armor_stand, scores={tp.id=9}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=10}] at @e[tag=tp, type=armor_stand, scores={tp.id=10}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=11}] at @e[tag=tp, type=armor_stand, scores={tp.id=11}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=12}] at @e[tag=tp, type=armor_stand, scores={tp.id=12}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=13}] at @e[tag=tp, type=armor_stand, scores={tp.id=13}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=14}] at @e[tag=tp, type=armor_stand, scores={tp.id=14}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=15}] at @e[tag=tp, type=armor_stand, scores={tp.id=15}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] as @s[scores={tp.id=16}] at @e[tag=tp, type=armor_stand, scores={tp.id=16}] run tp @s ~ ~-255 ~
execute as @a[scores={effect.freeze=1..}] at @s unless score @s effect.invis matches 1.. run particle block ice ~ ~1 ~ .3 .5 .3 0 2
execute as @a[scores={effect.freeze=1..}] at @s unless score @s effect.invis matches 1.. run particle electric_spark ~ ~1 ~ .3 .5 .3 0 1
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players set @s p_cd_s 1
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players set @s p_cd_ms 10
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players set @s ab.cd_s 1
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players set @s ab.cd_ms 10
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players remove @s effect.freeze 1


# Deactivation
#execute as @a[scores={effect.invis=0}] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s actionbar [{"text":"❌ ","color":"gray"},{"translate":"effect.invis","color":"dark_red","strikethrough": true}]
execute as @a[scores={effect.freeze=0}] at @s run scoreboard players reset @s effect.freeze