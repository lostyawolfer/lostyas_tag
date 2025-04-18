scoreboard players operation @s xp.recieve = @s points
scoreboard players operation @s xp.recieve *= @s points
scoreboard players operation @s xp.recieve /= 7000 consts
scoreboard players operation @s xp.recieve += @s points
scoreboard players operation @s xp.recieve /= 7 consts
scoreboard players operation @s xp.recieve /= 2 consts
scoreboard players operation @s xp.recieve *= 2 consts
execute if score @s ab.current matches 0 run scoreboard players operation @s xp.recieve *= 2 consts

scoreboard players operation @s points.recieve = @s points
scoreboard players operation @s points.recieve *= -1 consts

scoreboard players operation temp server = @s points
scoreboard players operation temp server %= 10 consts

execute unless score @s ab.current matches 0 if score temp server matches 0 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}]
execute unless score @s ab.current matches 0 if score temp server matches 1 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_one"}]
execute unless score @s ab.current matches 0 if score temp server matches 2..4 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_two"}]
execute unless score @s ab.current matches 0 if score temp server matches 5.. run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}]

execute if score @s ab.current matches 0 if score temp server matches 0 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}, {"translate": "title.recieve_xp.no_ability", "color": "#FFFF00"}]
execute if score @s ab.current matches 0 if score temp server matches 1 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_one"}, {"translate": "title.recieve_xp.no_ability", "color": "#FFFF00"}]
execute if score @s ab.current matches 0 if score temp server matches 2..4 run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_two"}, {"translate": "title.recieve_xp.no_ability", "color": "#FFFF00"}]
execute if score @s ab.current matches 0 if score temp server matches 5.. run tellraw @s [{"text": "+", "color": "#7EFC20"}, {"score": {"name": "@s", "objective": "xp.recieve"}}, " ", {"translate": "title.recieve_xp.1"}, " ", {"score": {"name": "@s", "objective": "points"}}, " ", {"translate": "title.recieve_xp.2_many"}, {"translate": "title.recieve_xp.no_ability", "color": "#FFFF00"}]

scoreboard players set @s points.reason.anim2 1
scoreboard players set @s points.reason.store2 0

scoreboard players operation @s points.title = @s points
scoreboard players operation @s xp.recieve.title = @s xp.recieve