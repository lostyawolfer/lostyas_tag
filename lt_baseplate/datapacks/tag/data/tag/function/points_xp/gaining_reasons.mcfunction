execute unless score game server matches 1.. if score @s points.reason.trigger matches 1..999 run scoreboard players add @s points.reason.trigger 1000
execute unless entity @a[tag = tagger, tag =!dead, tag =!safezone] if score @s points.reason.trigger matches 1..999 run scoreboard players add @s points.reason.trigger 1000
execute unless entity @s[tag =!safezone] if score @s points.reason.trigger matches 1..999 run scoreboard players add @s points.reason.trigger 1000
execute if entity @s[tag=no_points] if score @s points.reason.trigger matches 1..999 run scoreboard players add @s points.reason.trigger 1000


# bhop
execute if score @s points.reason.trigger matches 1 run scoreboard players add @s points.recieve 1
execute if score @s points.reason.trigger matches 2 run scoreboard players add @s points.recieve 2
execute if score @s points.reason.trigger matches 3 run scoreboard players add @s points.recieve 3
# dash
execute if score @s points.reason.trigger matches 4 run scoreboard players add @s points.recieve 2
# near a tagger
execute if score @s points.reason.trigger matches 5 run scoreboard players add @s points.recieve 1
# disrespect
execute if score @s points.reason.trigger matches 6 run scoreboard players add @s points.recieve 7
# airhop
execute if score @s points.reason.trigger matches 7 run scoreboard players add @s points.recieve 5
# escape
execute if score @s points.reason.trigger matches -1 run scoreboard players add @s points.recieve 10
# wins
execute if score @s points.reason.trigger matches -2 run scoreboard players add @s points.recieve 1000
execute if score @s points.reason.trigger matches -3 run scoreboard players add @s points.recieve 500
execute if score @s points.reason.trigger matches -4 run scoreboard players add @s points.recieve 120
# that was high
execute if score @s points.reason.trigger matches -5 run scoreboard players add @s points.recieve 20
##tagging
# normal tag
execute if score @s points.reason.trigger matches -7 unless score @s gain_for_tagging_timer matches 1.. run scoreboard players add @s points.recieve 40
execute if score @s points.reason.trigger matches -8 unless score @s gain_for_tagging_timer matches 1.. run scoreboard players remove @s points.recieve 40
# freeze
execute if score @s points.reason.trigger matches -9 run scoreboard players add @s points.recieve 60
execute if score @s points.reason.trigger matches -10 run scoreboard players add @s points.recieve 200
execute if score @s points.reason.trigger matches -11 run scoreboard players add @s points.recieve 60
# chaos, chaos!
execute if score @s points.reason.trigger matches -12 run scoreboard players add @s points.recieve 60



execute if score @s points.reason.trigger matches 1..999 run playsound entity.experience_orb.pickup master @s ~ ~ ~ .25 2 .25
execute if score @s points.reason.trigger matches 1000.. run playsound entity.player.attack.crit master @s ~ ~ ~ .25 2 .25
execute if score @s points.reason.trigger matches ..-1 unless score @s points.reason.trigger matches -8..-7 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7 1
execute if score @s points.reason.trigger matches ..-1 if score @s points.reason.trigger matches -8..-7 unless score @s gain_for_tagging_timer matches 1.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7 1

execute if score @s points.reason.store matches ..-1 unless score @s points.reason.trigger matches ..-1 run scoreboard players reset @s points.reason.trigger
execute if score @s points.reason.store matches ..-1 unless score @s points.reason.trigger matches ..-1 run return 3

# scoreboard players operation @s points.reason.store = @s points.reason.trigger
# scoreboard players set @s points.reason.anim 1


execute if score @s points.reason.trigger matches 1.. unless score @s points.reason.store matches ..0 run scoreboard players set @s points.reason.anim 1
execute if score @s points.reason.trigger matches 1.. unless score @s points.reason.store matches ..0 run scoreboard players operation @s points.reason.store = @s points.reason.trigger

execute if score @s points.reason.trigger matches ..-1 unless score @s points.reason.trigger matches -8..-7 run scoreboard players set @s points.reason.anim2 1
execute if score @s points.reason.trigger matches ..-1 if score @s points.reason.trigger matches -8..-7 unless score @s gain_for_tagging_timer matches 1.. run scoreboard players set @s points.reason.anim2 1
execute if score @s points.reason.trigger matches ..-1 unless score @s points.reason.trigger matches -8..-7 run scoreboard players operation @s points.reason.store2 = @s points.reason.trigger
execute if score @s points.reason.trigger matches ..-1 if score @s points.reason.trigger matches -8..-7 unless score @s gain_for_tagging_timer matches 1.. run scoreboard players operation @s points.reason.store2 = @s points.reason.trigger



execute if score @s points.reason.trigger matches -7 run scoreboard players set @s gain_for_tagging_timer 100
execute if score @s points.reason.trigger matches -7 run scoreboard players add @s gain_for_tagging_timer2 1
execute if score @s points.reason.trigger matches -8 run scoreboard players set @s gain_for_tagging_timer 100
execute if score @s points.reason.trigger matches -8 run scoreboard players add @s gain_for_tagging_timer2 1


scoreboard players reset @s points.reason.trigger


execute if score @s gain_for_tagging_timer matches ..60 run scoreboard players reset @s gain_for_tagging_timer2

execute if score @s gain_for_tagging_timer2 matches 20.. run scoreboard players set @s gain_for_tagging_timer2 4
execute if score @s gain_for_tagging_timer2 matches 5 run scoreboard players set @s points.reason.trigger -12
execute if score @s gain_for_tagging_timer2 matches 5 run scoreboard players add @s gain_for_tagging_timer2 1
