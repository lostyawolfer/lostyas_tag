## detection
# giver
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run tag @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1,sort=random] add tag.give_out
execute as @a[scores={tag.give_out=1..},tag=!tagger] at @s unless entity @a[tag=!tagger,scores={tag.recieve=1..},distance=..10,limit=1] run scoreboard players reset @s tag.give_out
# reciever
execute if score game_type consts matches 0..1 as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run function tag:misc/tag_recieve
execute if score game_type consts matches 2 as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run function tag:misc/tag_infect
execute if score game_type consts matches 3 as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run function tag:misc/tag_kill
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s unless entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run scoreboard players reset @s tag.recieve
execute as @a[scores={tag.recieve=1..},tag=tagger] at @s run scoreboard players reset @s tag.recieve


# tagger animation timer
scoreboard players add @a[tag=tagger] tagger_timer 1

# make a holy mantle ability user invincible for a little while after (not) getting tagged
# this is to prevent people double-clicking to bypass holy mantle ability
execute as @a[tag=invincible.one_time, scores={aftertagger_invincibility=1..}] run scoreboard players remove @s aftertagger_invincibility 1
execute as @a[tag=invincible.one_time, scores={aftertagger_invincibility=0}] run tag @s remove invincible.one_time
execute as @a[scores={aftertagger_invincibility=0}] run scoreboard players reset @s aftertagger_invincibility


# admin power handler (so that using /tag @r add tagger shows visual effects)
execute as @a[tag=tagger] unless score @s tag.recieve.admin matches 0.. run function tag:misc/tag_recieve_admin
execute as @a[tag=tagger] unless score @s tag.recieve.admin matches 0.. run scoreboard players add @s tag.recieve.admin 0
execute as @a[tag=!tagger] if score @s tag.recieve.admin matches 0.. run scoreboard players reset @s tag.recieve.admin