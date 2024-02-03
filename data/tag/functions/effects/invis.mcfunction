## Glowing effect
#  (like when you are tagged)


execute as @a[scores={effect.invis=1..}, tag = !safezoned] at @s run effect give @s minecraft:invisibility 1 0 true
#execute as @a[scores={effect.invis=1..}, tag = !safezoned] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s[scores={jump.bhop.title_anim=..5}] actionbar [{"text":"❌ ","color":"dark_gray"},{"translate":"effect.invis"}]
#execute as @a[scores={effect.invis=1..}, tag = !safezoned] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s[scores={jump.bhop.title_anim=..5}] actionbar [{"text":"❌ ","color":"dark_gray"},{"translate":"effect.invis"}]
#execute as @a[scores={effect.invis=1..}, team = !player, team = !tagger, team = !menu, team = !menu_tagger] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s[scores={jump.bhop.title_anim=..5}] actionbar [{"text":"❌ ","color":"gray","strikethrough": true},{"translate":"effect.invis"}]
execute as @a[scores={effect.invis=1..}, tag = !safezoned] at @s run scoreboard players remove @s effect.invis 1


# Deactivation
execute as @a[scores={effect.invis=0}] at @s run effect clear @s minecraft:invisibility
#execute as @a[scores={effect.invis=0}] unless score @s effect.glow matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s actionbar [{"text":"❌ ","color":"gray"},{"translate":"effect.invis","color":"dark_red","strikethrough": true}]
execute as @a[scores={effect.invis=0}] at @s run scoreboard players reset @s effect.invis