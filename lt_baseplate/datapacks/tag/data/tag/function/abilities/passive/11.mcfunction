# backpack

# execute if score @s pa.ability_specific.jump matches 1.. if score @s jump.bhop matches 2..20 run scoreboard players add @s jump.bhop 10
# execute if score @s pa.ability_specific.jump matches 1.. if score @s jump.bhop matches 2..20 run scoreboard players set @s pa.ability_specific.jump 0

# execute if score @s jump.bhop matches 21.. run scoreboard players set @s pa.active 1
# execute unless score @s jump.bhop matches 21.. run scoreboard players set @s pa.active 0



execute if entity @s[gamemode=adventure, tag=!safezone] unless score @s effect.downed matches 1.. if score @s pa.ability_specific.counter matches 1.. run scoreboard players remove @s pa.ability_specific.counter 1

execute if entity @s[gamemode=adventure, tag=!safezone] unless score @s effect.downed matches 1.. if score @s pa.ability_specific.counter matches ..0 run scoreboard players set @s pa.active 1
execute if entity @s[gamemode=adventure, tag= safezone] if score @s pa.ability_specific.counter matches ..0 run scoreboard players set @s pa.active 0
execute if entity @s[gamemode=adventure] if score @s effect.downed matches 1.. if score @s pa.ability_specific.counter matches ..0 run scoreboard players set @s pa.active 0
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 1..20 run scoreboard players set @s pa.active -1
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 20.. run scoreboard players set @s pa.active -2
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 40.. run scoreboard players set @s pa.active -3
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.active -4
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 80.. run scoreboard players set @s pa.active -5
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 100.. run scoreboard players set @s pa.active -6
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 120.. run scoreboard players set @s pa.active -7
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 140.. run scoreboard players set @s pa.active -8
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 160.. run scoreboard players set @s pa.active -9
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 180.. run scoreboard players set @s pa.active -10
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.active -11
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 220.. run scoreboard players set @s pa.active -12
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 240.. run scoreboard players set @s pa.active -13
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 260.. run scoreboard players set @s pa.active -14
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 280.. run scoreboard players set @s pa.active -15
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 300.. run scoreboard players set @s pa.active -16
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 320.. run scoreboard players set @s pa.active -17
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 340.. run scoreboard players set @s pa.active -18
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 360.. run scoreboard players set @s pa.active -19
execute if entity @s[gamemode=adventure] if score @s pa.ability_specific.counter matches 380.. run scoreboard players set @s pa.active -20


execute if score @s pa.ability_specific.pearl_thrown matches 1.. if score @s pa.ability_specific.counter matches 20.. run scoreboard players operation @s p.cd = @s pa.ability_specific.counter
execute if score @s pa.ability_specific.pearl_thrown matches 1.. unless score @s pa.ability_specific.counter matches 20.. run scoreboard players set @s p.cd 20
execute if score @s pa.ability_specific.pearl_thrown matches 1.. if score game server matches 1.. run scoreboard players set @s pa.ability_specific.counter 400
execute if score @s pa.ability_specific.pearl_thrown matches 1.. unless score game server matches 1.. run scoreboard players set @s pa.ability_specific.counter 20
execute if score @s pa.ability_specific.pearl_thrown matches 1.. run scoreboard players set @s p.use.trigger 0
execute if score @s pa.ability_specific.pearl_thrown matches 1.. run scoreboard players set @s pa.ability_specific.pearl_thrown 0