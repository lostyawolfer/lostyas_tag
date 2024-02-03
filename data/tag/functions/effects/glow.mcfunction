## Glowing effect
#  (like when you are tagged)


execute as @a[scores={effect.glow=1..}, tag = !safezoned] at @s run effect give @s minecraft:glowing 1 0 true
#execute as @a[scores={effect.glow=1..}, tag = !tagger, tag = !safezoned] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"aqua"},{"translate":"effect.glow"}]
#execute as @a[scores={effect.glow=1..}, tag =  tagger, tag = !safezoned] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"aqua"},{"translate":"effect.glow"}]
#execute as @a[scores={effect.glow=1..}, team = !player, tag = !tagger, team = !menu, team = !menu_tagger] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"gray", "strikethrough": true},{"translate":"effect.glow"}]
execute as @a[scores={effect.glow=1..}, tag = !safezoned] at @s run scoreboard players remove @s effect.glow 1


# Deactivation
execute as @a[scores={effect.glow=0}] at @s run effect clear @s minecraft:glowing
#execute as @a[scores={effect.glow=0}] at @s unless score @s effect.invis matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s actionbar [{"text":"⚠ ","color":"gray"},{"translate":"effect.glow","color":"dark_red","strikethrough": true}]
execute as @a[scores={effect.glow=0}] at @s run scoreboard players reset @s effect.glow