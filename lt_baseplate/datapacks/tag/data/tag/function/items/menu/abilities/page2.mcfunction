execute if score @s menu matches 120 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:110}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 120 unless score @s ab.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=6, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 120 unless score @s ab.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=6, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']

execute if score @s menu matches 120 if score @s ab.unlocked_6 matches 1 unless score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=5, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 120 if score @s ab.unlocked_7 matches 1 unless score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=5, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']

execute if score @s menu matches 120 if score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=27, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 120 if score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=27, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']

execute if score @s menu matches 120 run item replace entity @s container.3 with air
execute if score @s menu matches 120 run item replace entity @s container.4 with air
execute if score @s menu matches 120 run item replace entity @s container.5 with air
execute if score @s menu matches 120 run item replace entity @s container.6 with air




execute if score @s menu matches 121 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:110}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 121 unless score @s menu.selecting matches 6 unless score @s ab.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=8, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 121 unless score @s menu.selecting matches 7 unless score @s ab.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=8, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']

execute if score @s menu matches 121 unless score @s menu.selecting matches 6 if score @s ab.unlocked_6 matches 1 unless score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=7, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 121 unless score @s menu.selecting matches 7 if score @s ab.unlocked_7 matches 1 unless score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=7, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']

execute if score @s menu matches 121 unless score @s menu.selecting matches 6 if score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:6}, custom_model_data=30, custom_name='[{"translate":"menu.abilities.6","color":"yellow","italic":false}]']
execute if score @s menu matches 121 unless score @s menu.selecting matches 7 if score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:121, select:7}, custom_model_data=30, custom_name='[{"translate":"menu.abilities.7","color":"yellow","italic":false}]']


execute if score @s menu matches 121 if score @s menu.selecting matches 6 unless score @s ab.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:122, select:6}, custom_model_data=10, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.abilities.6"}, {"text": "\\"?"}, {"text": " (9 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']
execute if score @s menu matches 121 if score @s menu.selecting matches 7 unless score @s ab.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:122, select:7}, custom_model_data=10, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.abilities.7"}, {"text": "\\"?"}, {"text": " (17 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']

execute if score @s menu matches 121 if score @s menu.selecting matches 6 if score @s ab.unlocked_6 matches 1 unless score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:123, select:6}, custom_model_data=9, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.abilities.6"}, {"text": "\\"?"}]']
execute if score @s menu matches 121 if score @s menu.selecting matches 7 if score @s ab.unlocked_7 matches 1 unless score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:123, select:7}, custom_model_data=9, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.abilities.7"}, {"text": "\\"?"}]']

execute if score @s menu matches 121 if score @s menu.selecting matches 6 if score @s ab.current_ability matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:124, select:6}, custom_model_data=33, custom_name='[{"translate":"menu.abilities.deselect","color":"red","italic":false, "bold": true}]']
execute if score @s menu matches 121 if score @s menu.selecting matches 7 if score @s ab.current_ability matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:124, select:7}, custom_model_data=33, custom_name='[{"translate":"menu.abilities.deselect","color":"red","italic":false, "bold": true}]']


execute if score @s menu matches 121 run item replace entity @s container.3 with air
execute if score @s menu matches 121 run item replace entity @s container.4 with air
execute if score @s menu matches 121 run item replace entity @s container.5 with air
execute if score @s menu matches 121 run item replace entity @s container.6 with air




execute if score @s menu matches 122 if score @s menu.selecting matches 6 run function tag:items/menu/abilities/buy/6
execute if score @s menu matches 122 if score @s menu.selecting matches 7 run function tag:items/menu/abilities/buy/7

execute if score @s menu matches 123 if score @s menu.selecting matches 6 run function tag:items/menu/abilities/select/6
execute if score @s menu matches 123 if score @s menu.selecting matches 7 run function tag:items/menu/abilities/select/7

execute if score @s menu matches 124 if score @s menu.selecting matches 6 run scoreboard players set @s ab.current_ability 0
execute if score @s menu matches 124 if score @s menu.selecting matches 7 run scoreboard players set @s ab.current_ability 0

execute if score @s menu matches 123 run playsound ui.loom.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 124 run playsound ui.stonecutter.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 122..124 run scoreboard players reset @s menu.selecting
execute if score @s menu matches 122..124 run scoreboard players set @s menu 120



execute if score @s menu matches 121 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run tellraw @s [{"text": "\n\n------- ", "color":"dark_purple"}, {"translate": "menu.abilities.6", "color":"light_purple", "bold": true}, {"text": " -------"}, "\n", {"translate": "menu.abilities.6.desc", "color": "gray"}, "\n", {"translate": "menu.abilities.cd", "italic": true, "color": "dark_green"}, {"text": ": 35 ", "italic": true, "color": "dark_green"}, {"translate": "menu.abilities.sec_many", "italic": true, "color": "dark_green"}, "\n", {"translate": "menu.abilities.use", "italic": true, "color": "dark_green"}, {"text": ": 10 ", "italic": true, "color": "dark_green"}, {"translate": "menu.abilities.sec_many", "italic": true, "color": "dark_green"}, "\n"]
execute if score @s menu matches 121 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run tellraw @s [{"text": "\n\n------- ", "color":"dark_purple"}, {"translate": "menu.abilities.7", "color":"light_purple", "bold": true}, {"text": " -------"}, "\n", {"translate": "menu.abilities.7.desc", "color": "gray"}, "\n", {"translate": "menu.abilities.cd", "italic": true, "color": "dark_green"}, {"text": ": 50 ", "italic": true, "color": "dark_green"}, {"translate": "menu.abilities.sec_many", "italic": true, "color": "dark_green"}, "\n", {"translate": "menu.abilities.use", "italic": true, "color": "dark_green"}, {"text": ": 7 ", "italic": true, "color": "dark_green"}, {"translate": "menu.abilities.ticks_many", "italic": true, "color": "dark_green"}, "\n"]