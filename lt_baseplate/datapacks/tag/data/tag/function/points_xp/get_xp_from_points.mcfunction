scoreboard players operation @s xp.recieve = @s points
scoreboard players operation @s xp.recieve /= 10 consts

scoreboard players operation @s points.recieve = @s points
scoreboard players operation @s points.recieve *= -1 consts

scoreboard players operation temp server = @s points
scoreboard players operation temp server %= 10 consts

execute if score temp server matches 0 run title @s actionbar [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}]
execute if score temp server matches 1 run title @s actionbar [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_one"}]
execute if score temp server matches 2..4 run title @s actionbar [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_two"}]
execute if score temp server matches 5.. run title @s actionbar [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}]