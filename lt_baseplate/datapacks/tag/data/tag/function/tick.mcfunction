gamemode adventure @a[gamemode = survival]
recipe take @a *


# variables before functions
execute store result score playercount server if entity @a
execute store result score taggers server if entity @a[tag=tagger]
scoreboard players add generic server 1
execute if score generic server matches 20.. run scoreboard players set generic server 0


# effects that negate minecraft stuff
effect give @a saturation 15 10 true
effect give @a instant_health 15 10 true

# ui stuff
bossbar set minecraft:version players @a
bossbar set minecraft:version name [{"text":"lostya's tag","color":"#FF8800"},{"text":"             ","color":"#999900","bold":false},{"text":"","color":"#997700"},{"text":"endless classic tag","color":"#FFBB00","bold":false},{"text":"              ","color":"#999900","bold":false},{"text":"v. pre-α ","color":"dark_gray","bold":false},{"score":{"name":"buildnum","objective":"server"},"color":"dark_gray","bold":true}]
scoreboard players add @a player_list 0

execute if score playercount_old server > playercount server run function tag:misc/update_player_list




# other functions
execute as @a at @s run function tag:tagging/decoration

execute as @a[tag =!safezone, gamemode =!spectator] at @s if block ~ ~ ~ cave_air run function tag:tagging/go_in_safezone
execute as @a[tag =!safezone, gamemode =!spectator] at @s if block ~ ~1 ~ cave_air run function tag:tagging/go_in_safezone

execute as @a[tag = safezone] at @s if block ~ ~ ~ cave_air run function tag:tagging/in_safezone
execute as @a[tag = safezone] at @s if block ~ ~1 ~ cave_air run function tag:tagging/in_safezone

execute as @a[tag = safezone] at @s unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function tag:tagging/out_of_safezone
execute as @a[tag = safezone, gamemode = spectator] at @s run function tag:tagging/out_of_safezone


execute as @a[gamemode = !spectator] at @s unless score @s effect.strong_levitation matches 0.. if block ~ ~-1 ~ beacon run function tag:misc/beacons

execute as @a[scores = {effect.glowing = 0..}, gamemode = adventure] at @s run function tag:effects/glowing
execute as @a[scores = {effect.strong_levitation = 0..}, gamemode = adventure] at @s run function tag:effects/strong_levitation
execute as @a[scores = {effect.freeze = 0..}, gamemode = adventure] at @s run function tag:effects/freeze
execute as @a[scores = {effect.invisibility = 0..}, gamemode = adventure] at @s run function tag:effects/invisibility
execute as @a[scores = {effect.downed = -1..}, gamemode = adventure] at @s run function tag:effects/downed

execute as @a[tag = dead, gamemode =!creative, tag =!safezone] at @s run function tag:misc/death
execute as @a[tag = dead, tag = safezone] at @s run tag @s remove dead
execute as @a[tag = dead, gamemode = creative] at @s run tag @s remove dead

execute as @a[scores = {anim.death = ..-1}] at @s run function tag:misc/spawn

execute as @a[scores = {hit_detect.taker = 1..}] unless entity @a[scores = {hit_detect.giver = 1..}] run tellraw @a[scores = {logging = 1..2}] ["! warn: ", {"selector": "@s"}, " got hit by something unknown"]
execute as @a[scores = {hit_detect.taker = 1..}] unless entity @a[scores = {hit_detect.giver = 1..}] run scoreboard players set @s hit_detect.taker 0
execute as @a[scores = {hit_detect.giver = 1..}] at @s run function tag:tagging/hit_detected



function tag:map_specific/lt_playground
execute as @a run function tag:misc/screens






# variables after functions
execute store result score playercount_old server if entity @a
execute store result score taggers_old server if entity @a[tag=tagger]






# temp
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players set @s anim.death -11
# execute as @a[scores = {fall = 1..}] at @s run scoreboard players reset @s fall
execute as @a at @s if block ~ ~-.1 ~ sandstone unless score @s anim.death matches -200.. run tag @s[gamemode=adventure] add dead
