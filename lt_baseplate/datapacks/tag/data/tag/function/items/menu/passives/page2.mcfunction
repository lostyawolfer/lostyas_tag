execute if score @s menu matches 220 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:210}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 220 unless score @s pa.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=13, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 220 unless score @s pa.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=13, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 220 unless score @s pa.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=13, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']

execute if score @s menu matches 220 if score @s pa.unlocked_6 matches 1 unless score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=12, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 220 if score @s pa.unlocked_7 matches 1 unless score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=12, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 220 if score @s pa.unlocked_8 matches 1 unless score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=12, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']

execute if score @s menu matches 220 if score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=29, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 220 if score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=29, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 220 if score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=29, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']

execute if score @s menu matches 220 run item replace entity @s container.4 with air
execute if score @s menu matches 220 run item replace entity @s container.5 with air
execute if score @s menu matches 220 run item replace entity @s container.6 with air




execute if score @s menu matches 221 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:210}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 221 unless score @s menu.selecting matches 6 unless score @s pa.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=15, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 7 unless score @s pa.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=15, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 8 unless score @s pa.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=15, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']

execute if score @s menu matches 221 unless score @s menu.selecting matches 6 if score @s pa.unlocked_6 matches 1 unless score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=14, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 7 if score @s pa.unlocked_7 matches 1 unless score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=14, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 8 if score @s pa.unlocked_8 matches 1 unless score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=14, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']

execute if score @s menu matches 221 unless score @s menu.selecting matches 6 if score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:6}, custom_model_data=32, custom_name='[{"translate":"menu.passives.6","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 7 if score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:7}, custom_model_data=32, custom_name='[{"translate":"menu.passives.7","color":"gold","italic":false}]']
execute if score @s menu matches 221 unless score @s menu.selecting matches 8 if score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:221, select:8}, custom_model_data=32, custom_name='[{"translate":"menu.passives.8","color":"gold","italic":false}]']


execute if score @s menu matches 221 if score @s menu.selecting matches 6 unless score @s pa.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:222, select:6}, custom_model_data=17, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.6"}, {"text": "\\"?"}, {"text": " (15 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 7 unless score @s pa.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:222, select:7}, custom_model_data=17, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.7"}, {"text": "\\"?"}, {"text": " (26 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 8 unless score @s pa.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:222, select:8}, custom_model_data=17, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.8"}, {"text": "\\"?"}, {"text": " (23 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']

execute if score @s menu matches 221 if score @s menu.selecting matches 6 if score @s pa.unlocked_6 matches 1 unless score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:223, select:6}, custom_model_data=16, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.6"}, {"text": "\\"?"}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 7 if score @s pa.unlocked_7 matches 1 unless score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:223, select:7}, custom_model_data=16, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.7"}, {"text": "\\"?"}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 8 if score @s pa.unlocked_8 matches 1 unless score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:223, select:8}, custom_model_data=16, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "menu.passives.8"}, {"text": "\\"?"}]']

execute if score @s menu matches 221 if score @s menu.selecting matches 6 if score @s pa.current_passive matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:224, select:6}, custom_model_data=33, custom_name='[{"translate":"menu.passives.deselect","color":"red","italic":false, "bold": true}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 7 if score @s pa.current_passive matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:224, select:7}, custom_model_data=33, custom_name='[{"translate":"menu.passives.deselect","color":"red","italic":false, "bold": true}]']
execute if score @s menu matches 221 if score @s menu.selecting matches 8 if score @s pa.current_passive matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:224, select:8}, custom_model_data=33, custom_name='[{"translate":"menu.passives.deselect","color":"red","italic":false, "bold": true}]']


execute if score @s menu matches 221 run item replace entity @s container.4 with air
execute if score @s menu matches 221 run item replace entity @s container.5 with air
execute if score @s menu matches 221 run item replace entity @s container.6 with air




execute if score @s menu matches 222 if score @s menu.selecting matches 6 run function tag:items/menu/passives/buy/6
execute if score @s menu matches 222 if score @s menu.selecting matches 7 run function tag:items/menu/passives/buy/7
execute if score @s menu matches 222 if score @s menu.selecting matches 8 run function tag:items/menu/passives/buy/8

execute if score @s menu matches 223 if score @s menu.selecting matches 6 run function tag:items/menu/passives/select/6
execute if score @s menu matches 223 if score @s menu.selecting matches 7 run function tag:items/menu/passives/select/7
execute if score @s menu matches 223 if score @s menu.selecting matches 8 run function tag:items/menu/passives/select/8

execute if score @s menu matches 224 if score @s menu.selecting matches 6 run scoreboard players set @s pa.current_passive 0
execute if score @s menu matches 224 if score @s menu.selecting matches 7 run scoreboard players set @s pa.current_passive 0
execute if score @s menu matches 224 if score @s menu.selecting matches 8 run scoreboard players set @s pa.current_passive 0

execute if score @s menu matches 223 run playsound ui.loom.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 224 run playsound ui.stonecutter.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 222..224 run scoreboard players reset @s menu.selecting
execute if score @s menu matches 222..224 run scoreboard players set @s menu 220



execute if score @s menu matches 221 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run tellraw @s [{"text": "\n\n\n\n\n\n\n------- ", "color":"gold"}, {"translate": "menu.passives.6", "color":"yellow", "bold": true}, {"text": " -------"}, "\n", {"translate": "menu.passives.6.desc", "color": "gray"}, "\n", {"text": "id: 6", "color": "dark_aqua", "italic": true}, "\n"]
execute if score @s menu matches 221 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run tellraw @s [{"text": "\n\n\n\n\n\n\n------- ", "color":"gold"}, {"translate": "menu.passives.7", "color":"yellow", "bold": true}, {"text": " -------"}, "\n", {"translate": "menu.passives.7.desc", "color": "gray"}, "\n", {"text": "id: 7", "color": "dark_aqua", "italic": true}, "\n"]
execute if score @s menu matches 221 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run tellraw @s [{"text": "\n\n\n\n\n\n\n------- ", "color":"gold"}, {"translate": "menu.passives.8", "color":"yellow", "bold": true}, {"text": " -------"}, "\n", {"translate": "menu.passives.8.desc", "color": "gray"}, "\n", {"text": "id: 8", "color": "dark_aqua", "italic": true}, "\n"]