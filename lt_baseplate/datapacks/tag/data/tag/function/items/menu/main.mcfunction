execute if score @s menu.trigger matches 1.. store result score @s menu run data get entity @s SelectedItem.components.minecraft:custom_data.menu
execute if score @s menu.trigger matches 1.. store result score @s menu.selecting run data get entity @s SelectedItem.components.minecraft:custom_data.select

execute if score @s menu.trigger matches 1.. if score @s menu matches 0 run clear @s *[!custom_data={game:0}]

execute if score @s menu matches 2.. run item replace entity @s container.6 with air
execute if score @s menu matches 2.. run item replace entity @s container.7 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:1}, custom_model_data=3, custom_name='[{"translate":"menu.back","color":"red","italic":false}]']
execute if score @s menu matches 2.. run item replace entity @s container.8 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:0}, custom_model_data=2, custom_name='[{"translate":"menu.close","color":"white","italic":false}]']

execute if score @s menu matches 1 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:110}, custom_model_data=4, custom_name='[{"translate":"menu.abilities","color":"yellow","italic":false}]']
execute if score @s menu matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:210}, custom_model_data=11, custom_name='[{"translate":"menu.passives","color":"gold","italic":false}]']
execute if score @s menu matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:310}, custom_model_data=18, custom_name='[{"translate":"menu.goat_horns","color":"gray","italic":false}]']
execute if score @s menu matches 1 run item replace entity @s container.3 with air
execute if score @s menu matches 1 run item replace entity @s container.4 with air
execute if score @s menu matches 1 run item replace entity @s container.5 with air
execute if score @s menu matches 1 run item replace entity @s container.6 with air
execute if score @s menu matches 1 run item replace entity @s container.7 with air
execute if score @s menu matches 1 run item replace entity @s container.8 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:0}, custom_model_data=2, custom_name='[{"translate":"menu.close","color":"white","italic":false}]']

execute if score @s menu matches 100..199 run function tag:items/menu/pages/abilities
execute if score @s menu matches 200..299 run function tag:items/menu/pages/passives
execute if score @s menu matches 300..399 run function tag:items/menu/pages/goat_horns




execute if score @s menu.trigger matches 1.. unless score @s menu.selecting matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ .3
execute if score @s menu.trigger matches 1.. if score @s menu.selecting matches 1.. run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ .3

execute if score @s menu.trigger matches 1.. run scoreboard players reset @s menu.trigger