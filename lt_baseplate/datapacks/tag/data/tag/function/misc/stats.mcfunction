execute if entity @s[tag = tagger, gamemode = adventure, tag =!safezone] if score game server matches 1.. run scoreboard players add @s stat.tagger_time 1
execute if entity @s[tag =!tagger] run scoreboard players set @s stat.tagger_time -1
execute if entity @s[tag = tagger] unless score game server matches 1.. run scoreboard players set @s stat.tagger_time 3
execute if entity @s[tag = tagger, gamemode = adventure, tag =!safezone] if score game server matches 1.. run scoreboard players add @s stat.tagger_time.total 1

execute store result score @s stat.xp run xp query @s levels


execute store result score @s stat.current_hight run data get entity @s Pos[1] 1

execute store result score @s stat.speed.calculate_new_x run data get entity @s Pos[0] 100000
execute store result score @s stat.speed.calculate_new_y run data get entity @s Pos[1] 100000
execute store result score @s stat.speed.calculate_new_z run data get entity @s Pos[2] 100000

# scoreboard players operation @s stat.speed.iter_9 = @s stat.speed.iter_8
# scoreboard players operation @s stat.speed.iter_8 = @s stat.speed.iter_7
# scoreboard players operation @s stat.speed.iter_7 = @s stat.speed.iter_6
# scoreboard players operation @s stat.speed.iter_6 = @s stat.speed.iter_5
scoreboard players operation @s stat.speed.iter_5 = @s stat.speed.iter_4
scoreboard players operation @s stat.speed.iter_4 = @s stat.speed.iter_3
scoreboard players operation @s stat.speed.iter_3 = @s stat.speed.iter_2
scoreboard players operation @s stat.speed.iter_2 = @s stat.speed.iter_1

scoreboard players set @s stat.speed.iter_1 0
scoreboard players set @s stat.vertical_speed 0

scoreboard players operation @s stat.speed.calculate_difference_x = @s stat.speed.calculate_new_x
scoreboard players operation @s stat.speed.calculate_difference_x -= @s stat.speed.calculate_old_x

scoreboard players operation @s stat.speed.calculate_difference_y = @s stat.speed.calculate_new_y
scoreboard players operation @s stat.speed.calculate_difference_y -= @s stat.speed.calculate_old_y

scoreboard players operation @s stat.speed.calculate_difference_z = @s stat.speed.calculate_new_z
scoreboard players operation @s stat.speed.calculate_difference_z -= @s stat.speed.calculate_old_z

scoreboard players operation @s stat.vertical_speed += @s stat.speed.calculate_difference_y

execute if score @s stat.speed.calculate_difference_x matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_x *= -1 consts
execute if score @s stat.speed.calculate_difference_y matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_y *= -1 consts
execute if score @s stat.speed.calculate_difference_z matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_z *= -1 consts

scoreboard players operation @s stat.speed.calculate_difference_x /= 1000 consts
scoreboard players operation @s stat.speed.calculate_difference_y /= 1000 consts
scoreboard players operation @s stat.speed.calculate_difference_z /= 1000 consts

scoreboard players operation @s stat.speed.iter_1 += @s stat.speed.calculate_difference_x
scoreboard players operation @s stat.speed.iter_1 += @s stat.speed.calculate_difference_y
scoreboard players operation @s stat.speed.iter_1 += @s stat.speed.calculate_difference_z


execute store result score @s stat.speed.calculate_old_x run data get entity @s Pos[0] 100000
execute store result score @s stat.speed.calculate_old_y run data get entity @s Pos[1] 100000
execute store result score @s stat.speed.calculate_old_z run data get entity @s Pos[2] 100000





scoreboard players operation @s stat.speed = @s stat.speed.iter_1
scoreboard players operation @s stat.speed += @s stat.speed.iter_2
scoreboard players operation @s stat.speed += @s stat.speed.iter_3
scoreboard players operation @s stat.speed += @s stat.speed.iter_4
scoreboard players operation @s stat.speed += @s stat.speed.iter_5
# scoreboard players operation @s stat.speed += @s stat.speed.iter_6
# scoreboard players operation @s stat.speed += @s stat.speed.iter_7
# scoreboard players operation @s stat.speed += @s stat.speed.iter_8
# scoreboard players operation @s stat.speed += @s stat.speed.iter_9
scoreboard players operation @s stat.speed /= 5 consts

execute if score @s stat.speed.iter_1 matches 0 if score @s stat.speed.iter_2 matches 0 run scoreboard players set @s stat.speed 0



# scoreboard players operation @s stat.speed = @s stat.speed.iter_1



scoreboard players operation @s stat.speed.digit_1 = @s stat.speed
scoreboard players operation @s stat.speed.digit_2 = @s stat.speed
scoreboard players operation @s stat.speed.digit_3 = @s stat.speed

scoreboard players operation @s stat.speed.digit_1 /= 100 consts

scoreboard players operation @s stat.speed.digit_2 /= 10 consts
scoreboard players operation @s stat.speed.digit_2 %= 10 consts

scoreboard players operation @s stat.speed.digit_3 %= 10 consts