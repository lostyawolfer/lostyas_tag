## Freeze effect


execute as @a[scores={effect.freeze=1..}] at @s run tp @s @s
execute as @a[scores={effect.freeze=1..}] at @s run scoreboard players remove @s effect.freeze 1


# Deactivation
#execute as @a[scores={effect.invis=0}] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s actionbar [{"text":"❌ ","color":"gray"},{"translate":"effect.invis","color":"dark_red","strikethrough": true}]
execute as @a[scores={effect.freeze=0}] at @s run scoreboard players reset @s effect.freeze