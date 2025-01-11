execute unless score @s pa.current_passive matches -999.. run scoreboard players set @s pa.current_passive 0


execute if score @s pa.current_passive matches 0 run item replace entity @s container.8 with red_dye[custom_model_data=3, custom_name='{"translate": "item.tag.passive.none", "italic": false, "color": "red", "bold": true}', custom_data={game: 1}]
execute if score @s pa.current_passive matches 0 run return 0

execute unless score @s pa.active matches 1.. run clear @s glowstone[custom_data={game: 1}]
execute if score @s pa.active matches 1.. run clear @s gunpowder[custom_data={game: 1}]
execute unless score @s pa.active matches 1.. run item replace entity @s container.8 with gunpowder[custom_name='{"translate": "item.tag.passive_not_active", "italic": false, "color": "gray"}', custom_data={game: 1}]
execute if score @s pa.active matches 1.. run item replace entity @s container.8 with glowstone[custom_name='{"translate": "item.tag.passive_active", "italic": false, "color": "#FFBC5E"}', custom_data={game: 1}]


execute if score @s gh.cd matches -4.. run scoreboard players remove @s[gamemode = adventure, tag =!safezone] gh.cd 1
