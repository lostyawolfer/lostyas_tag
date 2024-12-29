#tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called downed funciton"]

scoreboard players operation @s effect.downed.seconds = @s effect.downed
scoreboard players operation @s effect.downed.seconds /= 20 consts
#scoreboard players operation @s effect.downed.seconds += 1 consts

scoreboard players operation @s effect.downed.ms = @s effect.downed
scoreboard players operation @s effect.downed.ms %= 20 consts
scoreboard players operation @s effect.downed.ms /= 2 consts


execute if score @s effect.downed.seconds matches 10.. run title @s actionbar [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score @s effect.downed.seconds matches ..9 run title @s actionbar [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
scoreboard players add @s effect.downed.count_up 1

effect give @s slowness infinite 6 true
effect give @s slow_falling infinite 0 true
particle electric_spark ~ ~1 ~ .2 .55 .2 0 2
tp @s @s
tp @s ~ ~ ~

execute if score @s effect.downed.count_up matches 1 run tellraw @a[scores={logging=1}] ["! log: ", {"selector": "@s"}, " is downed"]
execute if score @s effect.downed.count_up matches 1 run playsound tag:downed master @s ~ ~ ~ 1 1
execute if score @s effect.downed.count_up matches 1 run scoreboard players set @s screen_effect 500
execute if score @s effect.downed.count_up matches 2 run scoreboard players set @s screen_effect 501
execute if score @s effect.downed.count_up matches 3 run scoreboard players set @s screen_effect 502
execute if score @s effect.downed.count_up matches 4 run scoreboard players set @s screen_effect 503
execute if score @s effect.downed.count_up matches 5 run scoreboard players set @s screen_effect 504
execute if score @s effect.downed.count_up matches 6 run scoreboard players set @s screen_effect 505
execute if score @s effect.downed.count_up matches 7 run scoreboard players set @s screen_effect 506
execute if score @s effect.downed.count_up matches 8 run scoreboard players set @s screen_effect 507
execute if score @s effect.downed.count_up matches 9 run scoreboard players set @s screen_effect 508
execute if score @s effect.downed.count_up matches 10 run scoreboard players set @s screen_effect 509
execute if score @s effect.downed.count_up matches 11 run scoreboard players set @s screen_effect 510
execute if score @s effect.downed.count_up matches 12 run scoreboard players set @s screen_effect 511
execute if score @s effect.downed.count_up matches 13 run scoreboard players set @s screen_effect 512
execute if score @s effect.downed.count_up matches 14 run scoreboard players set @s screen_effect 513
execute if score @s effect.downed.count_up matches 15 run scoreboard players set @s screen_effect 514
execute if score @s effect.downed.count_up matches 16 run scoreboard players set @s screen_effect 514
execute if score @s effect.downed.count_up matches 17.. run scoreboard players set @s screen_effect 515

execute if score @s effect.downed matches 0 run tag @s add dead
execute if score @s effect.downed matches 0 run stopsound @s * tag:downed
execute if score @s effect.downed matches 0 run effect clear @s
execute if score @s effect.downed matches 0 run scoreboard players set @s anim.death 100
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed

execute if score @s effect.downed matches -1 run title @s actionbar ""
execute if score @s effect.downed matches -1 run stopsound @s * tag:downed
execute if score @s effect.downed matches -1 run effect clear @s
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed

execute if score @s effect.downed matches 1.. run scoreboard players remove @s effect.downed 1