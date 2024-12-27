# ✨ TAG GUARD ✨

#Blink
execute if entity @s[gamemode = adventure, scores = {stat.vertical_speed=0}, nbt = {OnGround: 0b}] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. run scoreboard players add @s anticheat 1
execute unless entity @s[gamemode = adventure, scores = {stat.vertical_speed=0}, nbt = {OnGround: 0b}] run scoreboard players reset @s anticheat
execute if score @s effect.downed matches 1.. run scoreboard players reset @s anticheat
execute if score @s effect.freeze matches 1.. run scoreboard players reset @s anticheat

execute if score @s anticheat matches 10.. run tellraw @a [{"text":"! [","color":"dark_red"},{"text":"TAGGUARD","color":"gold"},{"text":"]: ","color":"dark_red"},{"selector":"@s","color":"yellow"},{"text":" is flying or blinking!","color":"red"}]
#execute if score @s anticheat matches 7.. run tag @s add dead
execute if score @s anticheat matches 10.. run scoreboard players reset @s anticheat

#Fly
execute if entity @s[gamemode=adventure, scores={stat.vertical_speed=0}, nbt={OnGround:0b}] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. run scoreboard players add @s anticheat 1
execute unless entity @s[gamemode=adventure, scores={stat.vertical_speed=0}, nbt={OnGround:0b}] run scoreboard players reset @s anticheat
execute if score @s effect.downed matches 1.. run scoreboard players reset @s anticheat
execute if score @s effect.freeze matches 1.. run scoreboard players reset @s anticheat
execute if score @s anticheat matches 10.. run tellraw @a [{"text":"! [","color":"dark_red"},{"text":"TAGGUARD","color":"gold"},{"text":"]: ","color":"dark_red"},{"selector":"@s","color":"yellow"},{"text":" is flying or blinking!","color":"red"}]
execute if score @s anticheat matches 10.. run scoreboard players reset @s anticheat
