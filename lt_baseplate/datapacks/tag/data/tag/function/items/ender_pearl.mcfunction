scoreboard players operation @s p.cd.s = @s p.cd
scoreboard players operation @s p.cd.s /= 20 consts
scoreboard players add @s p.cd.s 1


execute if score game server matches 1.. if score @s p.use.trigger matches 1.. if score game server matches 1.. run scoreboard players remove e.glowing server 120
execute if score game server matches 1.. if score @s p.use.trigger matches 1.. run scoreboard players set @s p.cd 300
execute if score game server matches 1.. if score @s p.use.trigger matches 1.. run scoreboard players set @s effect.glowing 10
execute unless score game server matches 1.. if score @s p.use.trigger matches 1.. run scoreboard players set @s p.cd 10
execute if score @s p.use.trigger matches 1.. run scoreboard players reset @s p.use.trigger


execute if score game server matches 1.. unless score @s p.cd matches -4.. run item replace entity @s container.2 with ender_pearl[!use_cooldown, use_remainder={id: "heart_of_the_sea", count: 15}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute unless score game server matches 1.. unless score @s p.cd matches -4.. run item replace entity @s container.2 with ender_pearl[!use_cooldown, use_remainder={id: "heart_of_the_sea", count: 1}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]

execute if score @s p.cd matches 1.. run clear @s ender_pearl[custom_data={game: 1}]
execute if score @s p.cd matches 1 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data=-1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s p.cd matches 2 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data=-2, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s p.cd matches 3 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data=-3, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s p.cd matches 4..19 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s p.cd.s matches 2 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 2
execute if score @s p.cd.s matches 3 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 3
execute if score @s p.cd.s matches 4 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 4
execute if score @s p.cd.s matches 5 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 5
execute if score @s p.cd.s matches 6 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 6
execute if score @s p.cd.s matches 7 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 7
execute if score @s p.cd.s matches 8 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 8
execute if score @s p.cd.s matches 9 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 9
execute if score @s p.cd.s matches 10 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 10
execute if score @s p.cd.s matches 11 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 11
execute if score @s p.cd.s matches 12 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 12
execute if score @s p.cd.s matches 13 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 13
execute if score @s p.cd.s matches 14 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 14
execute if score @s p.cd.s matches 15 run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 15


execute if score @s p.cd matches 0 run playsound entity.ender_eye.death master @s ~ ~ ~ 1 1 1
execute if score @s p.cd matches -1 run item replace entity @s container.2 with ender_pearl[custom_model_data=4, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s p.cd matches -2 run item replace entity @s container.2 with ender_pearl[custom_model_data=3, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s p.cd matches -3 run item replace entity @s container.2 with ender_pearl[custom_model_data=2, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]
execute if score @s p.cd matches -4 run item replace entity @s container.2 with ender_pearl[custom_model_data=1, !use_cooldown, use_remainder={id: "heart_of_the_sea"}, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "#339786", "bold": true}', custom_data={game: 1}]


execute if entity @s[tag = safezone, scores = {p.cd = ..4}] run item replace entity @s container.2 with heart_of_the_sea[custom_model_data= 1, custom_name='{"translate": "item.minecraft.ender_pearl", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if entity @s[tag = safezone, scores = {p.cd = ..4}] run scoreboard players set @s p.cd 4
execute if score @s p.cd matches -4.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] p.cd 1
# execute unless score game server matches 1.. if score @s p.cd matches 20.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] p.cd 19
# execute unless score game server matches 1.. if score @s p.cd matches 7.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] p.cd 4
# execute unless score game server matches 1.. unless score @s p.cd matches -5.. run scoreboard players set @s[gamemode = adventure, tag =!safezone] p.cd 0