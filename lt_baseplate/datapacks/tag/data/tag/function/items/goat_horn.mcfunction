execute if score @s gh.cd matches -4.. run scoreboard players remove @s[gamemode = adventure] gh.cd 1

scoreboard players operation @s gh.cd.s = @s gh.cd
scoreboard players remove @s gh.cd.s 1
scoreboard players operation @s gh.cd.s /= 20 consts
scoreboard players add @s gh.cd.s 1

execute unless score @s gh.current_goat_horn matches -999.. run scoreboard players set @s gh.current_goat_horn 0

execute if score @s gh.current_goat_horn matches 0 run item replace entity @s container.7 with red_dye[custom_model_data=2, custom_name='{"translate": "item.minecraft.goat_horn.none", "italic": false, "color": "red", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 0 run return 0


execute if score game server matches 1.. if score @s gh.use.trigger matches 1.. if score game server matches 1.. if score e.glowing server matches ..-1 run scoreboard players remove e.glowing server 36
execute if score game server matches 1.. if score @s gh.use.trigger matches 1.. run scoreboard players set @s gh.cd 140
execute unless score game server matches 1.. if score @s gh.use.trigger matches 1.. run scoreboard players set @s gh.cd 10
execute if score @s gh.use.trigger matches 1.. run scoreboard players reset @s gh.use.trigger


execute if score @s gh.current_goat_horn matches 1 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "ponder_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 2 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "sing_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 3 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "seek_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 4 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "feel_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 5 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "admire_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 6 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "call_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 7 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "yearn_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.current_goat_horn matches 8 unless score @s gh.cd matches -3.. run item replace entity @s container.7 with goat_horn[instrument = "dream_goat_horn", custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]

execute if score @s gh.cd matches 1 run item replace entity @s container.7 with brick[custom_model_data=-1, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s gh.cd matches 2 run item replace entity @s container.7 with brick[custom_model_data=-2, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s gh.cd matches 3 run item replace entity @s container.7 with brick[custom_model_data=-3, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s gh.cd matches 4..20 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}]
execute if score @s gh.cd.s matches 2 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 2
execute if score @s gh.cd.s matches 3 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 3
execute if score @s gh.cd.s matches 4 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 4
execute if score @s gh.cd.s matches 5 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 5
execute if score @s gh.cd.s matches 6 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 6
execute if score @s gh.cd.s matches 7 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 7
execute if score @s gh.cd.s matches 8 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 8
execute if score @s gh.cd.s matches 9 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 9
execute if score @s gh.cd.s matches 10 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 10
execute if score @s gh.cd.s matches 11 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 11
execute if score @s gh.cd.s matches 12 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 12
execute if score @s gh.cd.s matches 13 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 13
execute if score @s gh.cd.s matches 14 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 14
execute if score @s gh.cd.s matches 15 run item replace entity @s container.7 with brick[custom_model_data= 0, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data={game: 1}] 15


execute if score @s gh.cd matches 0 at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ .2 2
execute if score @s gh.cd matches 0 at @s run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ .2 2
execute if score @s gh.cd matches -3 at @s run stopsound @s master minecraft:item.goat_horn.sound.1
execute if score @s gh.cd matches 0 run item replace entity @s container.7 with goat_horn[custom_model_data=4, !use_cooldown, use_remainder={id: "brick", components:{custom_model_data:1, custom_name:'{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data:{game: 1}}}, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.cd matches -1 run item replace entity @s container.7 with goat_horn[custom_model_data=3, !use_cooldown, use_remainder={id: "brick", components:{custom_model_data:1, custom_name:'{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data:{game: 1}}}, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.cd matches -2 run item replace entity @s container.7 with goat_horn[custom_model_data=2, !use_cooldown, use_remainder={id: "brick", components:{custom_model_data:1, custom_name:'{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data:{game: 1}}}, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]
execute if score @s gh.cd matches -3 run item replace entity @s container.7 with goat_horn[custom_model_data=1, !use_cooldown, use_remainder={id: "brick", components:{custom_model_data:1, custom_name:'{"translate": "item.minecraft.goat_horn", "italic": false, "color": "gray", "strikethrough": true}', custom_data:{game: 1}}}, custom_name='{"translate": "item.minecraft.goat_horn", "italic": false, "color": "#B7B77F", "bold": true}', custom_data={game: 1}]

execute if score @s gh.cd matches 1.. run clear @s goat_horn[custom_data={game: 1}]