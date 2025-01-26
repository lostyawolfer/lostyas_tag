execute unless score game server matches 4 if entity @s[tag = tagger, tag = safezone, gamemode = adventure] run item replace entity @s container.0 with stick[custom_data={game: 3}, custom_name='{"text": "Ты вода!", "color": "gray", "bold": true, "italic": false}']

execute if score game server matches 1 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=1, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']
execute if score game server matches 2 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=2, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']
execute if score game server matches 3 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=3, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']
execute if score game server matches 4 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=4, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FFFF00", "bold": true, "italic": false}']
execute if score game server matches 5 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=5, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']
execute if score game server matches 6 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=6, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']
execute if score game server matches 7 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=7, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}']

execute unless entity @s[tag = tagger] run clear @s *[custom_data={game: 2}]

execute unless score game server matches 1.. run clear @s *[custom_data={game: 2}]
execute unless score game server matches 1.. run clear @s *[custom_data={game: 3}]

execute unless score game server matches 4 if entity @s[tag = tagger, tag = safezone] run clear @s *[custom_data={game: 2}]
execute unless score game server matches 4 if entity @s[tag = tagger, tag =!safezone] run clear @s *[custom_data={game: 3}]
