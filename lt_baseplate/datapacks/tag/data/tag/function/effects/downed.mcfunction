#tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called downed funciton"]

scoreboard players operation @s effect.downed.seconds = @s effect.downed
scoreboard players operation @s effect.downed.seconds /= 20 consts
#scoreboard players operation @s effect.downed.seconds += 1 consts

scoreboard players operation @s effect.downed.ms = @s effect.downed
scoreboard players operation @s effect.downed.ms %= 20 consts
scoreboard players operation @s effect.downed.ms /= 2 consts

scoreboard players operation @s effect.downed.seconds.10 = @s effect.downed.seconds
scoreboard players operation @s effect.downed.seconds.10 %= 10 consts


scoreboard players add @s effect.downed.count_up 1



execute if score @s effect.downed.count_up matches 1 run title @s times 0 25 5
execute if score @s effect.downed.count_up matches 1 run title @s title [{"translate": "title.hit.freeze_you", "color":"red", "bold": true}]

execute if score @s effect.downed.count_up matches 31 run title @s times 5 300 20
execute if score @s effect.downed.count_up matches 31 run title @s title [{"translate": "помощь в пути...", "color":"#E1FCFF"}]
# TEMPORARY!!!!!!!
# PLEASE REPLACE THE TRANSLATION LINE WITH AN ACTUAL TRANSLATION LINE

execute if score @s effect.downed.count_up matches 31..34 run title @s subtitle [{"text":"", "color":"red"}]


execute unless score game server matches 6 if score @s effect.downed.count_up matches 35 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"☠", "color":"red"}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 35 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"☠", "color":"red"}]

execute unless score game server matches 6 if score @s effect.downed.count_up matches 36 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"☠ ", "color":"red"}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 36 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"☠ ", "color":"red"}]

execute unless score game server matches 6 if score @s effect.downed.count_up matches 37 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds.10"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 37 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]

execute unless score game server matches 6 if score @s effect.downed.count_up matches 38 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 38 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, "."]

execute unless score game server matches 6 if score @s effect.downed matches 1.. if score @s effect.downed.count_up matches 39.. if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed matches 1.. if score @s effect.downed.count_up matches 39.. if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]



execute if score game server matches 6 if score @s effect.downed.count_up matches 35 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"🔥", "color":"dark_green"}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 35 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"🔥", "color":"dark_green"}]

execute if score game server matches 6 if score @s effect.downed.count_up matches 36 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 36 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}]

execute if score game server matches 6 if score @s effect.downed.count_up matches 37 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds.10"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 37 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]

execute if score game server matches 6 if score @s effect.downed.count_up matches 38 if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 38 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, "."]

execute if score game server matches 6 if score @s effect.downed matches 1.. if score @s effect.downed.count_up matches 39.. if score @s effect.downed.seconds matches 10.. run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed matches 1.. if score @s effect.downed.count_up matches 39.. if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]




execute if score @s effect.downed.count_up matches 40.. run title @s times 0 100 0
execute if score @s effect.downed.count_up matches 40.. run title @s title [{"translate": "помощь в пути...", "color":"#E1FCFF"}]
# TEMPORARY!!!!!!!
# PLEASE REPLACE THE TRANSLATION LINE WITH AN ACTUAL TRANSLATION LINE


scoreboard players set @s jump 0
scoreboard players set @s jump.bhop 0
scoreboard players set @s jump.bhop2 0
scoreboard players set @s jump.timer 0
scoreboard players set @s effect.invisibility 0
scoreboard players set @s[scores={effect.strong_levitation=1..}] effect.strong_levitation 0
particle electric_spark ~ ~1 ~ .2 .55 .2 0 1
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
attribute @s attack_damage base set 0
attribute @s knockback_resistance base set 120

execute if score @s effect.downed.count_up matches 1 run tellraw @a[scores={logging=1}] ["! log: ", {"selector": "@s"}, " is downed"]
execute if score @s effect.downed.count_up matches 1 run playsound tag:downed master @s ~ ~ ~ 1 1
execute if score @s effect.downed.count_up matches 1 if score @s safezone_state matches -1 run tag @s add safezone_state_-1
execute if score @s effect.downed.count_up matches 1.. run scoreboard players set @s safezone_state -1
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

execute if score @s effect.downed.count_up matches 1..10 run attribute @s gravity base set .005
execute if score @s effect.downed.count_up matches 11..20 run attribute @s gravity base set .01
execute if score @s effect.downed.count_up matches 21..30 run attribute @s gravity base set .015
execute if score @s effect.downed.count_up matches 31..40 run attribute @s gravity base set .02
execute if score @s effect.downed.count_up matches 41..50 run attribute @s gravity base set .025
execute if score @s effect.downed.count_up matches 51..60 run attribute @s gravity base set .03
execute if score @s effect.downed.count_up matches 61..70 run attribute @s gravity base set .035
execute if score @s effect.downed.count_up matches 71..80 run attribute @s gravity base set .04
execute if score @s effect.downed.count_up matches 81..90 run attribute @s gravity base set .045
execute if score @s effect.downed.count_up matches 91..100 run attribute @s gravity base set .05
execute if score @s effect.downed.count_up matches 101..111 run attribute @s gravity base set .055
execute if score @s effect.downed.count_up matches 111..121 run attribute @s gravity base set .06
execute if score @s effect.downed.count_up matches 121..131 run attribute @s gravity base set .065
execute if score @s effect.downed.count_up matches 131..141 run attribute @s gravity base set .07
execute if score @s effect.downed.count_up matches 141..151 run attribute @s gravity base set .075
execute if score @s effect.downed.count_up matches 151..161 run attribute @s gravity base set .08

#tp @s[nbt={OnGround:1b}] @s


execute if score @s effect.downed matches 0 run title @s times 0 20 3
execute if score @s effect.downed matches 0 unless score game server matches 6 run tag @s add dead
execute if score @s effect.downed matches 0 if score game server matches 6 run tag @s add tagger
execute if score @s effect.downed matches 0 if score game server matches 6 run function tag:tagging/tag_give/infection_freeze
execute if score @s effect.downed matches 0 run scoreboard players set @s[tag=!safezone_state_-1] safezone_state 0
execute if score @s effect.downed matches 0 run tag @s remove safezone_state_-1
execute if score @s effect.downed matches 0 run stopsound @s * tag:downed
execute if score @s effect.downed matches 0 run effect clear @s
execute if score @s effect.downed matches 0 run attribute @s gravity base set .08
execute if score @s effect.downed matches 0 run attribute @s jump_strength base set 0.42
execute if score @s effect.downed matches 0 run attribute @s movement_speed base set .15
execute if score @s effect.downed matches 0 run attribute @s attack_damage base set 1
execute if score @s effect.downed matches 0 run attribute @s knockback_resistance base set 0
execute if score @s effect.downed matches 0 run scoreboard players set @s anim.death 100
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches 0 run scoreboard players reset @s effect.downed

execute if score @s effect.downed matches -1 run title @s times 0 20 3
execute if score @s effect.downed matches -1 run title @s title [{"translate": "title.hit.unfreeze_you", "color":"green", "bold": true}]
execute if score @s effect.downed matches -1 run scoreboard players set @s[tag=!safezone_state_-1] safezone_state 0
execute if score @s effect.downed matches -1 run tag @s remove safezone_state_-1
execute if score @s effect.downed matches -1 run stopsound @s * tag:downed
execute if score @s effect.downed matches -1 run effect clear @s
execute if score @s effect.downed matches -1 run attribute @s gravity base set .08
execute if score @s effect.downed matches -1 run attribute @s jump_strength base set 0.42
execute if score @s effect.downed matches -1 run attribute @s movement_speed base set .15
execute if score @s effect.downed matches -1 run attribute @s attack_damage base set 1
execute if score @s effect.downed matches -1 run attribute @s knockback_resistance base set 0
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed

execute if score @s effect.downed matches 1.. run scoreboard players remove @s effect.downed 1