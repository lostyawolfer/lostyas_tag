## Dragging down effect
#  (used in ability id 7)


execute as @a[scores={effect.down=1..}, tag = !safezoned] at @s run effect give @s minecraft:levitation 1 128 true
execute as @a[scores={effect.down=1..}, tag = !safezoned] at @s run scoreboard players add @s fall_force 50 
#execute as @a[scores={effect.glow=1..}, tag = !tagger, tag = !safezoned] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"aqua"},{"translate":"effect.glow"}]
#execute as @a[scores={effect.glow=1..}, tag =  tagger, tag = !safezoned] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"aqua"},{"translate":"effect.glow"}]
#execute as @a[scores={effect.glow=1..}, team = !player, tag = !tagger, team = !menu, team = !menu_tagger] as @s[scores={jump.bhop.title_anim=..5}] as @s[scores={playtime.near_tagger.title_anim=..0}] run title @s actionbar [{"text":"⚠ ","color":"gray", "strikethrough": true},{"translate":"effect.glow"}]
execute as @a[scores={effect.down=-9..}, tag = !safezoned] at @s run scoreboard players remove @s effect.down 1




# Deactivation
execute as @a[scores={effect.down=0}] at @s run effect clear @s minecraft:levitation
#execute as @a[scores={effect.glow=0}] at @s unless score @s effect.invis matches 1.. as @s[scores={jump.bhop.title_anim=..0}] as @s[scores={playtime.near_tagger.title_anim=..9}] run title @s actionbar [{"text":"⚠ ","color":"gray"},{"translate":"effect.glow","color":"dark_red","strikethrough": true}]

execute as @a[scores={effect.down=0}] at @s run effect give @s slow_falling infinite 0 true
execute as @a[scores={effect.down=-3}] at @s run effect clear @s minecraft:slow_falling
execute as @a[scores={effect.down=-5}] at @s run scoreboard players operation @s fall += @s fall_force
execute as @a[scores={effect.down=-5}] at @s run scoreboard players reset @s fall_force
execute as @a[scores={effect.down=-5}] at @s run scoreboard players reset @s effect.down