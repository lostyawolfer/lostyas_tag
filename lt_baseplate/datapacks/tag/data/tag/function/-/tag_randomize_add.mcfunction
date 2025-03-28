execute unless score tag.random_counter server matches -30.. run tellraw @a [{"text":"🔥 ","color":"light_purple"},{"translate":"chat.choosing_random","color":"dark_aqua"}]
#execute unless score tag.random_counter server matches 0.. run tag @a remove tagger
execute unless score tag.random_counter server matches -30.. run scoreboard players set tag.random_counter server 80
execute unless score tag.random_counter server matches -30.. run scoreboard players set tag.random_counter.time server 0

execute if score tag.random_counter server matches 0.. run title @a subtitle {"translate":"subtitle.choosing_random","color":"dark_purple"}
execute if score tag.random_counter server matches 0.. run title @a times 0 30 3
execute if score tag.random_counter server matches 30.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 30.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 30.. as @a at @s run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 25..29 if score tag.random_counter.time server matches 1.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 25..29 if score tag.random_counter.time server matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 25..29 if score tag.random_counter.time server matches 1.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 25..29 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 18..24 if score tag.random_counter.time server matches 3.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 18..24 if score tag.random_counter.time server matches 3.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 18..24 if score tag.random_counter.time server matches 3.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 18..24 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 14..17 if score tag.random_counter.time server matches 5.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 14..17 if score tag.random_counter.time server matches 5.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 14..17 if score tag.random_counter.time server matches 5.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 14..17 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 11..13 if score tag.random_counter.time server matches 8.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 11..13 if score tag.random_counter.time server matches 8.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 11..13 if score tag.random_counter.time server matches 8.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 11..13 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 7..10 if score tag.random_counter.time server matches 10.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"blue"},{"text":" <"}]
execute if score tag.random_counter server matches 6 if score tag.random_counter.time server matches 10.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"aqua"},{"text":" <"}]
execute if score tag.random_counter server matches 5 if score tag.random_counter.time server matches 10.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"green"},{"text":" <"}]
execute if score tag.random_counter server matches 4 if score tag.random_counter.time server matches 10.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"yellow"},{"text":" <"}]
execute if score tag.random_counter server matches 4..10 if score tag.random_counter.time server matches 10.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 4..10 if score tag.random_counter.time server matches 10.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 4..10 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 3 if score tag.random_counter.time server matches 15.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"gold"},{"text":" <"}]
execute if score tag.random_counter server matches 2 if score tag.random_counter.time server matches 15.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"red"},{"text":" <"}]
execute if score tag.random_counter server matches 1 if score tag.random_counter.time server matches 15.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r[tag=!dead, tag=!tagger]","color":"dark_red"},{"text":" <"}]
execute if score tag.random_counter server matches 1..3 if score tag.random_counter.time server matches 15.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score tag.random_counter server matches 1..3 if score tag.random_counter.time server matches 15.. run scoreboard players set tag.random_counter.time server 0
execute if score tag.random_counter server matches 1..3 if score tag.random_counter.time server matches 0 run scoreboard players remove tag.random_counter server 1

execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. as @a at @s run playsound ui.loom.take_result master @s ~ ~ ~ .1 1
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. unless entity @a[scores={stat.wasnt_selected_steak=3..}] as @r[tag=!prev_tagger, tag=!tagger, tag=!special] run tag @s add tagger
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. if entity @a[scores={stat.wasnt_selected_steak=3..}] unless entity @a[scores={stat.wasnt_selected_steak=7..}, tag=!tagger, tag=!special] as @r[tag=!prev_tagger, scores={stat.wasnt_selected_steak=3..}] run tag @s add tagger
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. if entity @a[scores={stat.wasnt_selected_steak=7..}] as @r[tag=!prev_tagger, scores={stat.wasnt_selected_steak=7..}, tag=!tagger, tag=!special] run tag @s add tagger
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. run tag @a remove prev_tagger
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. run tag @a[tag=tagger] add prev_tagger
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. run scoreboard players reset @a[tag=tagger] stat.wasnt_selected_steak
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. run scoreboard players add @a[tag=!tagger] stat.wasnt_selected_steak 1
#execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. at @a[tag=tagger] run summon lightning_bolt
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. if score game server matches 0 run scoreboard players set game server 1
#execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. as @a[tag = tagger] run damage @s .1
#execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. as @a[tag = tagger] run title @a title [{"selector":"@s","color":"yellow"},{"text":" вода!"}]
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. if score game server matches 7 run scoreboard players set kill_timer server 1200
execute if score tag.random_counter server matches 0 if score tag.random_counter.time server matches 20.. run scoreboard players set tag.random_counter server -1

execute if score tag.random_counter server matches 0.. run scoreboard players add tag.random_counter.time server 1
execute if score tag.random_counter server matches ..-1 run scoreboard players remove tag.random_counter server 1
execute if score tag.random_counter server matches ..-30 run scoreboard players reset tag.random_counter server
execute if score tag.random_counter server matches -30.. run schedule function tag:-/tag_randomize_add 1t