# make everyone in adventure
gamemode adventure @a[gamemode = survival]


# variables before functions
execute store result score playercount_old server if entity @a
execute store result score taggers_old server if entity @a[tag=tagger]



# temporary unplayable build of the game thing
execute as @a unless score @s disable_message matches 1.. run title @s actionbar "this is an unplayable build of the game. \"/trigger disable_message\" to disable this message"
scoreboard players enable @a disable_message

# effects that negate minecraft stuff
effect give @a saturation 15 10 true
effect give @a instant_health 15 10 true

# ui stuff
bossbar set minecraft:version name [{"text":"lostya's tag","color":"#FF8800"},{"text":"             ","color":"#999900","bold":false},{"text":"","color":"#997700"},{"text":"endless classic tag","color":"#FFBB00","bold":false},{"text":"              ","color":"#999900","bold":false},{"text":"v. pre-α ","color":"dark_gray","bold":false},{"score":{"name":"buildnum","objective":"server"},"color":"dark_gray","bold":true}]
scoreboard players add @a player_list 0

execute if score playercount_old server > playercount server run function tag:misc/update_player_list




# other functions
execute as @a at @s run function tag:tagging/decoration

execute as @a[tag=!safezone] at @s if block ~ ~ ~ cave_air run function tag:tagging/go_in_safezone
execute as @a[tag=!safezone] at @s if block ~ ~1 ~ cave_air run function tag:tagging/go_in_safezone

execute as @a[tag= safezone] at @s if block ~ ~ ~ cave_air run function tag:tagging/in_safezone
execute as @a[tag= safezone] at @s if block ~ ~1 ~ cave_air run function tag:tagging/in_safezone

execute as @a[tag= safezone] at @s unless block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function tag:tagging/out_of_safezone

execute as @a at @s unless score @s effect.strong_levitation matches 0.. if block ~ ~-1 ~ beacon run function tag:misc/beacons

execute as @a[scores = {effect.glowing = 0..}] at @s run function tag:effects/glowing
execute as @a[scores = {effect.strong_levitation = 0..}] at @s run function tag:effects/strong_levitation
execute as @a[scores = {effect.freeze = 0..}] at @s run function tag:effects/freeze
execute as @a[scores = {effect.invisibility = 0..}] at @s run function tag:effects/invisibility

function tag:map_specific/lt_playground






# variables after functions
execute store result score playercount server if entity @a
execute store result score taggers server if entity @a[tag=tagger]