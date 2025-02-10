scoreboard players operation @s ab.cd.s = @s ab.cd
scoreboard players operation @s ab.cd.s /= 20 consts
scoreboard players add @s ab.cd.s 1

scoreboard players operation @s ab.use.s = @s ab.use
scoreboard players operation @s ab.use.s /= 20 consts
scoreboard players add @s ab.use.s 1



# TEMPORARY CODE
# execute if score @s ab.use.trigger matches 1.. run scoreboard players set @s ab.cd 300
# execute if score @s ab.use.trigger matches 1.. run scoreboard players set @s ab.use 300
# execute if score @s ab.use.trigger matches 1.. run scoreboard players reset @s ab.use.trigger

execute unless score @s ab.current_ability matches -999.. run scoreboard players set @s ab.current_ability 0

execute unless score @s ab.current_ability matches 0 unless score @s ab.cd matches -4.. run item replace entity @s container.1 with carrot_on_a_stick[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s ab.current_ability matches 0 unless score @s ab.cd matches -4.. run item replace entity @s container.1 with red_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]

execute if score @s ab.cd matches 1.. run clear @s carrot_on_a_stick[custom_data={game: 1}]

execute if score @s ab.use.s matches 1 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 1
execute if score @s ab.use.s matches 2 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 2
execute if score @s ab.use.s matches 3 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 3
execute if score @s ab.use.s matches 4 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 4
execute if score @s ab.use.s matches 5 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 5
execute if score @s ab.use.s matches 6 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 6
execute if score @s ab.use.s matches 7 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 7
execute if score @s ab.use.s matches 8 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 8
execute if score @s ab.use.s matches 9 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 9
execute if score @s ab.use.s matches 10 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 10
execute if score @s ab.use.s matches 11 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 11
execute if score @s ab.use.s matches 12 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 12
execute if score @s ab.use.s matches 13 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 13
execute if score @s ab.use.s matches 14 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 14
execute if score @s ab.use.s matches 15 run item replace entity @s container.1 with lime_dye[custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 15

execute unless score @s ab.use matches 1.. if score @s ab.cd matches 1 run item replace entity @s container.1 with gray_dye[custom_model_data=-1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute unless score @s ab.use matches 1.. if score @s ab.cd matches 2 run item replace entity @s container.1 with gray_dye[custom_model_data=-2, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute unless score @s ab.use matches 1.. if score @s ab.cd matches 3 run item replace entity @s container.1 with gray_dye[custom_model_data=-3, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute unless score @s ab.use matches 1.. if score @s ab.cd matches 4..19 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 2 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 2
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 3 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 3
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 4 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 4
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 5 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 5
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 6 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 6
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 7 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 7
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 8 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 8
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 9 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 9
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 10 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 10
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 11 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 11
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 12 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 12
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 13 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 13
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 14 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 14
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 15 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 15
execute unless score @s ab.use matches 1.. if score @s ab.cd.s matches 16 run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 16


execute if score @s ab.cd matches 0 run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute if score @s ab.cd matches -1 run item replace entity @s container.1 with carrot_on_a_stick[custom_model_data=4, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s ab.cd matches -2 run item replace entity @s container.1 with carrot_on_a_stick[custom_model_data=3, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s ab.cd matches -3 run item replace entity @s container.1 with carrot_on_a_stick[custom_model_data=2, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s ab.cd matches -4 run item replace entity @s container.1 with carrot_on_a_stick[custom_model_data=1, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]


execute if entity @s[tag = safezone, scores = {ab.cd = ..4}] run item replace entity @s container.1 with gray_dye[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if entity @s[tag = safezone, scores = {ab.cd = ..4}] run scoreboard players set @s ab.cd 4

execute if score @s ab.use matches 0.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] ab.use 1
execute if score @s ab.use matches 0.. run scoreboard players set @s[gamemode = adventure, tag = safezone] ab.use -1
execute if score @s ab.cd matches -4.. unless score @s ab.use matches 1.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] ab.cd 1
