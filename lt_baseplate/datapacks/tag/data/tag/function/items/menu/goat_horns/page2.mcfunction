execute if score @s menu matches 320 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:310}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 320 unless score @s gh.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=20, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 unless score @s gh.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=20, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 unless score @s gh.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:8}, custom_model_data=20, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']

execute if score @s menu matches 320 if score @s gh.unlocked_6 matches 1 unless score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=19, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 if score @s gh.unlocked_7 matches 1 unless score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=19, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 if score @s gh.unlocked_8 matches 1 unless score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:8}, custom_model_data=19, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']

execute if score @s menu matches 320 if score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=28, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 if score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=28, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 320 if score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:8}, custom_model_data=28, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']

execute if score @s menu matches 320 run item replace entity @s container.4 with air
execute if score @s menu matches 320 run item replace entity @s container.5 with air
execute if score @s menu matches 320 run item replace entity @s container.6 with air




execute if score @s menu matches 321 run item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:310}, custom_model_data=26, custom_name='[{"translate":"menu.prev","color":"white","italic":false}]']

execute if score @s menu matches 321 unless score @s menu.selecting matches 6 unless score @s gh.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=22, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 7 unless score @s gh.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=22, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 8 unless score @s gh.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:8}, custom_model_data=22, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']

execute if score @s menu matches 321 unless score @s menu.selecting matches 6 if score @s gh.unlocked_6 matches 1 unless score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=21, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 7 if score @s gh.unlocked_7 matches 1 unless score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=21, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 8 if score @s gh.unlocked_8 matches 1 unless score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=21, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']

execute if score @s menu matches 321 unless score @s menu.selecting matches 6 if score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:6}, custom_model_data=31, custom_name='[{"translate":"instrument.minecraft.call_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 7 if score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:7}, custom_model_data=31, custom_name='[{"translate":"instrument.minecraft.yearn_goat_horn","color":"#B7B77F","italic":false}]']
execute if score @s menu matches 321 unless score @s menu.selecting matches 8 if score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:321, select:8}, custom_model_data=31, custom_name='[{"translate":"instrument.minecraft.dream_goat_horn","color":"#B7B77F","italic":false}]']


execute if score @s menu matches 321 if score @s menu.selecting matches 6 unless score @s gh.unlocked_6 matches 1 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:322, select:6}, custom_model_data=24, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.call_goat_horn"}, {"text": "\\"?"}, {"text": " (5 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 7 unless score @s gh.unlocked_7 matches 1 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:322, select:7}, custom_model_data=24, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.yearn_goat_horn"}, {"text": "\\"?"}, {"text": " (5 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 8 unless score @s gh.unlocked_8 matches 1 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:322, select:8}, custom_model_data=24, custom_name='[{"translate":"menu.buy","color":"green","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.dream_goat_horn"}, {"text": "\\"?"}, {"text": " (5 ", "italic": true, "bold": false}, {"translate": "menu.buy.price", "italic": true, "bold": false}, {"text": ")", "italic": true, "bold": false}]']

execute if score @s menu matches 321 if score @s menu.selecting matches 6 if score @s gh.unlocked_6 matches 1 unless score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:323, select:6}, custom_model_data=23, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.call_goat_horn"}, {"text": "\\"?"}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 7 if score @s gh.unlocked_7 matches 1 unless score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:323, select:7}, custom_model_data=23, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.yearn_goat_horn"}, {"text": "\\"?"}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 8 if score @s gh.unlocked_8 matches 1 unless score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:323, select:8}, custom_model_data=23, custom_name='[{"translate":"menu.select","color":"aqua","italic":false, "bold": true}, {"text": " \\""}, {"translate": "instrument.minecraft.dream_goat_horn"}, {"text": "\\"?"}]']

execute if score @s menu matches 321 if score @s menu.selecting matches 6 if score @s gh.current_goat_horn matches 6 run item replace entity @s container.1 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:324, select:6}, custom_model_data=33, custom_name='[{"translate":"menu.abilities.deselect","color":"red","italic":false, "bold": true}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 7 if score @s gh.current_goat_horn matches 7 run item replace entity @s container.2 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:324, select:7}, custom_model_data=33, custom_name='[{"translate":"menu.abilities.deselect","color":"red","italic":false, "bold": true}]']
execute if score @s menu matches 321 if score @s menu.selecting matches 8 if score @s gh.current_goat_horn matches 8 run item replace entity @s container.3 with minecraft:warped_fungus_on_a_stick[custom_data={game:4, menu:324, select:8}, custom_model_data=33, custom_name='[{"translate":"menu.abilities.deselect","color":"red","italic":false, "bold": true}]']


execute if score @s menu matches 321 run item replace entity @s container.4 with air
execute if score @s menu matches 321 run item replace entity @s container.5 with air
execute if score @s menu matches 321 run item replace entity @s container.6 with air




execute if score @s menu matches 322 if score @s menu.selecting matches 6 run function tag:items/menu/goat_horns/buy/6
execute if score @s menu matches 322 if score @s menu.selecting matches 7 run function tag:items/menu/goat_horns/buy/7
execute if score @s menu matches 322 if score @s menu.selecting matches 8 run function tag:items/menu/goat_horns/buy/8

execute if score @s menu matches 323 if score @s menu.selecting matches 6 run function tag:items/menu/goat_horns/select/6
execute if score @s menu matches 323 if score @s menu.selecting matches 7 run function tag:items/menu/goat_horns/select/7
execute if score @s menu matches 323 if score @s menu.selecting matches 8 run function tag:items/menu/goat_horns/select/8

execute if score @s menu matches 324 if score @s menu.selecting matches 6 run scoreboard players set @s gh.current_goat_horn 0
execute if score @s menu matches 324 if score @s menu.selecting matches 7 run scoreboard players set @s gh.current_goat_horn 0
execute if score @s menu matches 324 if score @s menu.selecting matches 8 run scoreboard players set @s gh.current_goat_horn 0


execute if score @s menu matches 321 if score @s menu.selecting matches 6..8 if score @s menu.trigger matches 1.. run stopsound @s master

execute if score @s menu matches 323 run playsound ui.loom.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 324 run playsound ui.stonecutter.take_result master @s ~ ~ ~ .3 1
execute if score @s menu matches 322..324 run scoreboard players reset @s menu.selecting
execute if score @s menu matches 322..324 run scoreboard players set @s menu 320

execute if score @s menu matches 321 if score @s menu.selecting matches 6 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.5 master @s ~ ~ ~ .2 1 .2
execute if score @s menu matches 321 if score @s menu.selecting matches 7 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.6 master @s ~ ~ ~ .2 1 .2
execute if score @s menu matches 321 if score @s menu.selecting matches 8 if score @s menu.trigger matches 1.. run playsound item.goat_horn.sound.7 master @s ~ ~ ~ .2 1 .2
