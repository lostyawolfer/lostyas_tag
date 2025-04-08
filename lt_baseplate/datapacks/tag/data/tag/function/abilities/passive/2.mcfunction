scoreboard players set @s pa.active 0


execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches ..20 run scoreboard players set @s pa.active -15
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 20.. run scoreboard players set @s pa.active -14
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 40.. run scoreboard players set @s pa.active -13
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. run scoreboard players set @s pa.active -12
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 80.. run scoreboard players set @s pa.active -11
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. run scoreboard players set @s pa.active -10
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 120.. run scoreboard players set @s pa.active -9
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 140.. run scoreboard players set @s pa.active -8
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 160.. run scoreboard players set @s pa.active -7
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 180.. run scoreboard players set @s pa.active -6
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 200.. run scoreboard players set @s pa.active -5
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 220.. run scoreboard players set @s pa.active -4
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 240.. run scoreboard players set @s pa.active -3
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 260.. run scoreboard players set @s pa.active -2
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 280.. run scoreboard players set @s pa.active -1

execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. as @a[tag=!tagger, tag=!dead, limit=1, sort=nearest] unless score @s effect.invisibility matches 1.. run scoreboard players add @s effect.glowing 10
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. at @a[tag=!tagger, tag=!dead, limit=1, sort=nearest, scores={effect.invisibility=1..}] run particle dust{color:821149, scale:1} ~ ~1 ~ .2 .3 .2 1 25 force @s
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 run scoreboard players set @s pa.active 1
execute if entity @s[tag=tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 300.. run scoreboard players set @s pa.ability_specific.counter 0




execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches ..20 if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active -5
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 20.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active -4
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 40.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active -3
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 60.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active -2
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 80.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active -1

execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] run scoreboard players add @s pa.ability_specific.counter 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 1 run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 2 run particle dust{color:692224, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 3 run particle dust{color:16727871, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 4 run particle dust{color:16772186, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 5 run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 6 run particle dust{color:692224, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. at @a[tag=tagger, scores={effect.invisibility=1..}] if score game server matches 7 run particle dust{color:16748800, scale:1} ~ ~1 ~ .3 .5 .3 0 25 normal @s
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 0..10 if entity @a[tag=tagger, scores={effect.invisibility=1..}] run scoreboard players set @s pa.active 1
execute if entity @s[tag=!tagger, gamemode=adventure, tag=!safezone] if score @s pa.ability_specific.counter matches 100.. run scoreboard players set @s pa.ability_specific.counter 0





