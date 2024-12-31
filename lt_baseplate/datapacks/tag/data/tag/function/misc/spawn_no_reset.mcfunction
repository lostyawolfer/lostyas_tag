execute unless score @s anim.death matches -200.. run scoreboard players set @s anim.death -11
execute if score @s anim.death matches 1.. run scoreboard players set @s anim.death -1

# execute if score @s anim.death matches -1 run tag @s remove dead
# execute if score @s anim.death matches -1 run tag @s remove tagger
# execute if score @s anim.death matches -1 run tag @s remove special
# execute if score @s anim.death matches -11 run tag @s remove dead
# execute if score @s anim.death matches -11 run tag @s remove tagger
# execute if score @s anim.death matches -11 run tag @s remove special
scoreboard players set @s effect.downed -1
scoreboard players set @s effect.freeze -1
effect clear @s

execute if score @s anim.death matches ..-1 run scoreboard players remove @s anim.death 1