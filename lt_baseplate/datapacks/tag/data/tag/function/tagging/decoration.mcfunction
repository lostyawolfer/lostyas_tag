execute if entity @s[tag=tagger, tag=special] run tag @s remove special

execute if entity @s[tag=tagger] run team join 0tagger
execute if entity @s[tag=special] run team join 1special

execute if entity @s[tag=!tagger, tag=!special] run team join 2player