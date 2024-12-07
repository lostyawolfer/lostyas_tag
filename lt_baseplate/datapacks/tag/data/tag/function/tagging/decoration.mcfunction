execute if entity @s[tag = tagger, tag = special] run tag @s remove special

execute if entity @s[tag = tagger] run team join 0tagger
execute if entity @s[tag = special] run team join 1special

execute if entity @s[tag =!tagger, tag =!special] run team join 2player




execute if entity @s[tag = tagger] unless score @s effect.glowing matches 2.. run scoreboard players set @s effect.glowing 1