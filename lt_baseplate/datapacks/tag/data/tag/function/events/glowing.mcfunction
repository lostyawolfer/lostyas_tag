# glowing
execute if score game server matches 1.. if score taggers server matches 1.. if score non-taggers server matches 1.. unless score e.glowing server matches 0.. run scoreboard players remove e.glowing server 1
execute unless score game server matches 1.. run scoreboard players set e.glowing server -2

execute if score e.glowing server matches 1 as @a at @s run playsound tag:glowing master @s ~ ~ ~
execute if score e.glowing server matches 1 as @a at @s run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 0
execute if score e.glowing server matches 1 as @a[tag =!ab.active.5] at @s run scoreboard players set @s effect.glowing 100
execute if score e.glowing server matches 1 as @a at @s run title @s times 10 20 40
execute if score e.glowing server matches 1 as @a at @s unless score @s effect.downed matches 0.. run title @s title [{"translate":"title.glowing", "color":"#FF00FF"}]
execute if score e.glowing server matches 1 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag =!tagger, tag =!dead, tag =!ab.active.5] subtitle [{"translate":"subtitle.glowing", "color":"aqua"}]
execute if score e.glowing server matches 1 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag = tagger, tag =!dead, tag =!ab.active.5] subtitle [{"translate":"subtitle.glowing.tagger", "color":"gold"}]
execute if score e.glowing server matches 1 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag = dead] subtitle [{"translate":"subtitle.glowing.dead", "color":"aqua"}]
execute if score e.glowing server matches 1 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag = ab.active.5] subtitle [{"translate":"subtitle.glowing.dead", "color":"aqua"}]
execute if score e.glowing server matches 1 run tellraw @a [{"text": "⚠", "color": "gold"}, " ", {"translate":"chat.glowing.ability", "color":"light_purple"}]
execute if score e.glowing server matches 1 run scoreboard players set e.glowing server 0

execute if score e.glowing server matches ..-4000 as @a at @s run playsound tag:glowing master @s ~ ~ ~
execute if score e.glowing server matches ..-4000 as @a at @s run scoreboard players set @s effect.glowing 100
execute if score e.glowing server matches ..-4000 as @a at @s run title @s times 10 20 40
execute if score e.glowing server matches ..-4000 as @a at @s unless score @s effect.downed matches 0.. run title @s title [{"translate":"title.glowing", "color":"#00FFFF"}]
execute if score e.glowing server matches ..-4000 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag =!tagger, tag =!dead] subtitle [{"translate":"subtitle.glowing", "color":"aqua"}]
execute if score e.glowing server matches ..-4000 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag = tagger, tag =!dead] subtitle [{"translate":"subtitle.glowing.tagger", "color":"gold"}]
execute if score e.glowing server matches ..-4000 as @a at @s unless score @s effect.downed matches 0.. run title @s[tag = dead] subtitle [{"translate":"subtitle.glowing.dead", "color":"aqua"}]
execute if score e.glowing server matches ..-4000 run tellraw @a [{"text": "⚠", "color": "gold"}, " ", {"translate":"chat.glowing", "color":"aqua"}]
execute if score e.glowing server matches ..-4000 run scoreboard players set e.glowing server -1000




# execute if score e.glowing_ability server matches -1.. run scoreboard players remove e.glowing_ability server 1

# execute if score e.glowing_ability server matches 0.. run scoreboard players set e.glowing server -2
# execute if score e.glowing_ability server matches 0.. as @a unless score @s effect.downed matches 1.. run title @s title ""
# execute if score e.glowing_ability server matches 0.. as @a unless score @s effect.downed matches 1.. run title @s times 0 5 3
# execute if score e.glowing_ability server matches 0.. as @a[tag=!ab.active.5] unless score @s effect.glowing matches 2.. run scoreboard players set @s effect.glowing 2

# scoreboard players operation e.glowing_ability_s server = e.glowing_ability server
# scoreboard players operation e.glowing_ability_s server /= 20 consts
# scoreboard players add e.glowing_ability_s server 1

# execute if score e.glowing_ability server matches 0.. as @a unless score @s effect.downed matches 1.. run title @s subtitle [{"translate":"title.glowing", "color":"light_purple"}, " ", {"score":{"name":"e.glowing_ability_s", "objective":"server"}, "color":"#ff00ff", "bold": true}]
# execute if score e.glowing_ability server matches -1 as @a unless score @s effect.downed matches 1.. run title @s subtitle [{"translate":"title.glowing", "color":"dark_gray"}, " ", {"score":{"name":"e.glowing_ability_s", "objective":"server"}, "color":"gray", "bold": true}]
