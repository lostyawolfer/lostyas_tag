execute store result score @s stat.speed.calculate_new_x run data get entity @s Pos[0] 100000
execute store result score @s stat.speed.calculate_new_y run data get entity @s Pos[1] 100000
execute store result score @s stat.speed.calculate_new_z run data get entity @s Pos[2] 100000



scoreboard players set @s stat.speed 0

scoreboard players operation @s stat.speed.calculate_difference_x = @s stat.speed.calculate_new_x
scoreboard players operation @s stat.speed.calculate_difference_y = @s stat.speed.calculate_new_y
scoreboard players operation @s stat.speed.calculate_difference_z = @s stat.speed.calculate_new_z

scoreboard players operation @s stat.speed.calculate_difference_x -= @s stat.speed.calculate_old_x
scoreboard players operation @s stat.speed.calculate_difference_y -= @s stat.speed.calculate_old_y
scoreboard players operation @s stat.speed.calculate_difference_z -= @s stat.speed.calculate_old_z

execute if score @s stat.speed.calculate_difference_x matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_x *= -1 consts
execute if score @s stat.speed.calculate_difference_y matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_y *= -1 consts
execute if score @s stat.speed.calculate_difference_z matches ..-1 run scoreboard players operation @s stat.speed.calculate_difference_z *= -1 consts

scoreboard players operation @s stat.speed.calculate_difference_x /= 1000 consts
scoreboard players operation @s stat.speed.calculate_difference_y /= 1000 consts
scoreboard players operation @s stat.speed.calculate_difference_z /= 1000 consts

scoreboard players operation @s stat.speed += @s stat.speed.calculate_difference_x
scoreboard players operation @s stat.speed += @s stat.speed.calculate_difference_y
scoreboard players operation @s stat.speed += @s stat.speed.calculate_difference_z



execute store result score @s stat.speed.calculate_old_x run data get entity @s Pos[0] 100000
execute store result score @s stat.speed.calculate_old_y run data get entity @s Pos[1] 100000
execute store result score @s stat.speed.calculate_old_z run data get entity @s Pos[2] 100000