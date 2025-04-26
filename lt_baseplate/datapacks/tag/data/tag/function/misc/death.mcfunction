execute unless score @s anim.death matches 17..99 unless score @s anim.death matches -1 run scoreboard players add @s anim.death 1

execute if score @s anim.death matches 1 run team join 002special @s
execute if score @s anim.death matches 1 run tag @s add special
execute if score @s anim.death matches 1 run tag @s remove tagger
#execute if score @s anim.death matches 1 run scoreboard players set @s ab.cd 0
#execute if score @s anim.death matches 1 run scoreboard players set @s p.cd 0
execute if score @s anim.death matches 1 run scoreboard players set @s effect.glowing 0
execute if score @s anim.death matches 1 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " died"]
execute if score @s anim.death matches 1 unless score game server matches 3 unless score game server matches 7 run tellraw @a [{"text": "", "color": "aqua"}, {"text": "☠ ", "color": "red"}, {"selector": "@s", "color": "dark_gray"}, {"translate": "chat.dead", "color": "aqua"}]
execute if score @s anim.death matches 1 if score game server matches 7 run tellraw @a [{"text": "", "color": "aqua"}, {"text": "☠ ", "color": "red"}, {"selector": "@s", "color": "dark_gray"}, {"translate": "chat.dead.hot_potato", "color": "aqua"}]
execute if score @s anim.death matches 1 run damage @s .01
execute if score @s anim.death matches 1 run title @s times 0 40 100
execute if score @s anim.death matches 1 run title @s title {"translate": "title.hit.murder_you", "color":"red", "bold": true}
execute if score @s anim.death matches 1 run stopsound @s * tag:downed
execute if score @s anim.death matches 1 run stopsound @s * tag:safezone_temp
execute if score @s anim.death matches 1 run playsound tag:death master @s ~ ~ ~ 1
execute if score @s anim.death matches 1 run playsound tag:death_main master @s ~ ~ ~ 1
execute if score @s anim.death matches 1 run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ .3 .5 .3 0 40
execute if score @s anim.death matches 1 run particle flame ~ ~1 ~ .3 .5 .3 .1 10

execute if score @s anim.death matches 1 unless score game server matches 7 run summon skeleton ~ ~ ~ {Tags:[death], NoAI:1b}
#execute if score @s anim.death matches 1 unless score game server matches 7 run data modify entity @e[type=skeleton, tag=death, limit=1] {} merge from entity @s {}
execute if score @s anim.death matches 1 unless score game server matches 7 run item replace entity @e[type=skeleton, tag=death] armor.head with paper
execute if score @s anim.death matches 1 unless score game server matches 7 run kill @e[type=skeleton, tag=death]

execute if score @s anim.death matches 1 if score game server matches 7 run summon creeper ~ ~ ~ {Tags:[death], NoAI:1b}
execute if score @s anim.death matches 1 if score game server matches 7 run kill @e[type=creeper, tag=death]

execute if score @s anim.death matches 1 run scoreboard players set @s screen_effect 200
execute if score @s anim.death matches 2 run scoreboard players set @s screen_effect 201
execute if score @s anim.death matches 3 run scoreboard players set @s screen_effect 202
execute if score @s anim.death matches 4 run scoreboard players set @s screen_effect 203
execute if score @s anim.death matches 5 run scoreboard players set @s screen_effect 204
execute if score @s anim.death matches 6 run scoreboard players set @s screen_effect 205
execute if score @s anim.death matches 7 run scoreboard players set @s screen_effect 206
execute if score @s anim.death matches 8 run scoreboard players set @s screen_effect 207
execute if score @s anim.death matches 9 run scoreboard players set @s screen_effect 208
execute if score @s anim.death matches 10 run scoreboard players set @s screen_effect 209
execute if score @s anim.death matches 11 run scoreboard players set @s screen_effect 210
execute if score @s anim.death matches 12 run scoreboard players set @s screen_effect 211
execute if score @s anim.death matches 13 run scoreboard players set @s screen_effect 212
execute if score @s anim.death matches 14 run scoreboard players set @s screen_effect 213
execute if score @s anim.death matches 15..16 run scoreboard players set @s screen_effect 214
execute if score @s anim.death matches 17 run scoreboard players set @s screen_effect 215



execute if score @s anim.death matches 101 run team join 002special @s
execute if score @s anim.death matches 101 run tag @s add special
execute if score @s anim.death matches 101 run scoreboard players set @a[tag = tagger] points.reason.trigger -10
#execute if score @s anim.death matches 101 run scoreboard players set @s ab.cd 0
#execute if score @s anim.death matches 101 run scoreboard players set @s p.cd 0
execute if score @s anim.death matches 101 run scoreboard players set @s effect.glowing 0
execute if score @s anim.death matches 101 run stopsound @s * tag:downed
execute if score @s anim.death matches 101 run stopsound @s * tag:safezone_temp
execute if score @s anim.death matches 101 run tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@s"}, " died by being downed"]
execute if score @s anim.death matches 101 run tellraw @a [{"text": "", "color": "aqua"}, {"text": "☠ ", "color": "red"}, {"selector": "@s", "color": "dark_gray"}, {"translate": "chat.dead.downed"}]
execute if score @s anim.death matches 101 run damage @s .01 freeze
execute if score @s anim.death matches 101 run title @s times 0 40 100
execute if score @s anim.death matches 101 run title @s title {"translate": "title.hit.murder_you", "color":"red", "bold": true}
execute if score @s anim.death matches 101 run title @s subtitle [{"selector": "@s", "color": "dark_gray"}, {"translate": "chat.dead.downed"}]
execute if score @s anim.death matches 101 run playsound tag:death master @s ~ ~ ~ 1
execute if score @s anim.death matches 101 run playsound tag:death_main master @s ~ ~ ~ 1
execute if score @s anim.death matches 101 run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ .3 .5 .3 0 30
execute if score @s anim.death matches 101 run particle block{block_state:{Name:packed_ice}} ~ ~1 ~ .3 .5 .3 0 10
execute if score @s anim.death matches 101 run particle soul_fire_flame ~ ~1 ~ .3 .5 .3 .1 10

execute if score @s anim.death matches 101 run summon stray ~ ~ ~ {Tags:[death], NoAI:1b}
execute if score @s anim.death matches 101 run item replace entity @e[type=stray, tag=death] armor.head with paper
execute if score @s anim.death matches 101 run kill @e[type=stray, tag=death]

execute if score @s anim.death matches 101 run scoreboard players set @s screen_effect 516
execute if score @s anim.death matches 102 run scoreboard players set @s screen_effect 517
execute if score @s anim.death matches 103 run scoreboard players set @s screen_effect 518
execute if score @s anim.death matches 104 run scoreboard players set @s screen_effect 519
execute if score @s anim.death matches 105 run scoreboard players set @s screen_effect 520
execute if score @s anim.death matches 106 run scoreboard players set @s screen_effect 521
execute if score @s anim.death matches 107 run scoreboard players set @s screen_effect 522
execute if score @s anim.death matches 108 run scoreboard players set @s screen_effect 523
execute if score @s anim.death matches 109 run scoreboard players set @s screen_effect 524
execute if score @s anim.death matches 110 run scoreboard players set @s screen_effect 525
execute if score @s anim.death matches 111 run scoreboard players set @s screen_effect 526
execute if score @s anim.death matches 112 run scoreboard players set @s screen_effect 527
execute if score @s anim.death matches 113 run scoreboard players set @s screen_effect 528
execute if score @s anim.death matches 114 run scoreboard players set @s screen_effect 529
execute if score @s anim.death matches 115..116 run scoreboard players set @s screen_effect 530
execute if score @s anim.death matches 117 run scoreboard players set @s screen_effect 215
execute if score @s anim.death matches 117 run scoreboard players set @s anim.death 17


title @s actionbar [{"text":"⌚ ","color":"gray"}, {"score":{"name":"@s","objective":"points"},"color":"gray"}, "  ", {"translate": "title.spectator", "color": "red"}]

# execute unless score kill_timer.s server matches 0.. run title @s actionbar {"translate": "title.spectator", "color": "red"}
# execute if score kill_timer.s server matches 61.. run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ", {"text":"💣 ", "color":"green"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "white"}]
# execute if score kill_timer.s server matches 31..60 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"yellow"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "white"}]
# execute if score kill_timer.s server matches 11..30 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"gold"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "yellow"}]
# execute if score kill_timer.s server matches 6..10 if score anim.slow server matches 0..9 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"red"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "gold"}]
# execute if score kill_timer.s server matches 6..10 if score anim.slow server matches 10..19 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"white"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "gold"}]
# execute if score kill_timer.s server matches 1..5 if score anim.fast server matches 0..1 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"red"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "gold"}]
# execute if score kill_timer.s server matches 1..5 if score anim.fast server matches 2..3 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💣 ", "color":"white"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "gold"}]
# execute if score kill_timer.s server matches 0 run title @s actionbar [{"translate": "title.spectator", "color": "red"}, "    ",{"text":"💥 ", "color":"dark_red"}, {"score":{"name":"kill_timer.s","objective":"server"}, "color": "red"}]
#execute unless entity @a[distance=...2, tag=!dead] run title @s actionbar {"translate": "title.spectator", "color": "red"}
#execute if entity @a[distance=...2, tag=!dead] run title @s actionbar [{"translate": "title.now_spectating", "color": "red"}, {"selector": "@a[distance=...2, tag=!dead]", "bold": true}]
gamemode spectator @s