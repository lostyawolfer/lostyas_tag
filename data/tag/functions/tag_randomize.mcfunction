execute unless score cnt tag.random_counter matches 0.. run tellraw @a[team = !menu_tagger, team = !menu] [{"text":"🔥 ","color":"light_purple"},{"translate":"tag.chat.choosing_random","color":"dark_aqua"}]
execute unless score cnt tag.random_counter matches 0.. run tag @a remove tagger
execute unless score cnt tag.random_counter matches 0.. run scoreboard players set cnt tag.random_counter 80
execute unless score cnt tag.random_counter matches 0.. run scoreboard players set time tag.random_counter 0


title @a subtitle {"translate":"tag.subtitle.choosing_random","color":"dark_purple"}
title @a times 0 30 3
execute if score cnt tag.random_counter matches 30.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"blue"},{"text":" <"}]
execute if score cnt tag.random_counter matches 30.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 30.. as @a at @s run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 25..29 if score time tag.random_counter matches 1.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"aqua"},{"text":" <"}]
execute if score cnt tag.random_counter matches 25..29 if score time tag.random_counter matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 25..29 if score time tag.random_counter matches 1.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 25..29 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 18..24 if score time tag.random_counter matches 3.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"green"},{"text":" <"}]
execute if score cnt tag.random_counter matches 18..24 if score time tag.random_counter matches 3.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 18..24 if score time tag.random_counter matches 3.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 18..24 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 14..17 if score time tag.random_counter matches 5.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"yellow"},{"text":" <"}]
execute if score cnt tag.random_counter matches 14..17 if score time tag.random_counter matches 5.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 14..17 if score time tag.random_counter matches 5.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 14..17 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 11..13 if score time tag.random_counter matches 8.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"gold"},{"text":" <"}]
execute if score cnt tag.random_counter matches 11..13 if score time tag.random_counter matches 8.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 11..13 if score time tag.random_counter matches 8.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 11..13 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 4..10 if score time tag.random_counter matches 10.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"red"},{"text":" <"}]
execute if score cnt tag.random_counter matches 4..10 if score time tag.random_counter matches 10.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 4..10 if score time tag.random_counter matches 10.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 4..10 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 1..3 if score time tag.random_counter matches 15.. run title @a title [{"text":"> ","bold": true, "color": "yellow"},{"selector":"@r","color":"dark_red"},{"text":" <"}]
execute if score cnt tag.random_counter matches 1..3 if score time tag.random_counter matches 15.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 1..3 if score time tag.random_counter matches 15.. run scoreboard players set time tag.random_counter 0
execute if score cnt tag.random_counter matches 1..3 if score time tag.random_counter matches 0 run scoreboard players remove cnt tag.random_counter 1

execute if score cnt tag.random_counter matches 0 if score time tag.random_counter matches 20.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ .1 2
execute if score cnt tag.random_counter matches 0 if score time tag.random_counter matches 20.. as @r run function tag:tag_recieve_random
execute if score cnt tag.random_counter matches 0 if score time tag.random_counter matches 20.. run scoreboard players reset cnt tag.random_counter




scoreboard players add time tag.random_counter 1
execute if score cnt tag.random_counter matches 0.. run schedule function tag:tag_randomize 1t