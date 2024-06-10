## detection
# giver
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run tag @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1,sort=random] add tag.give_out
execute as @a[scores={tag.give_out=1..},tag=!tagger] at @s unless entity @a[tag=!tagger,scores={tag.recieve=1..},distance=..10,limit=1] run scoreboard players reset @s tag.give_out
# reciever
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run function tag:misc/tag_recieve
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s unless entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run scoreboard players reset @s tag.recieve
execute as @a[scores={tag.recieve=1..},tag=tagger] at @s run scoreboard players reset @s tag.recieve


# tagger animation timer
scoreboard players add @a[tag=tagger] tagger_timer 1

# make a holy mantle user invincible for a little while after (not) getting tagged
# this is to prevent people double-clicking to bypass holy mantle ability
execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=1..}] run scoreboard players remove @s aftertagger_invincibility 1
execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=0}] run tag @s remove invincible.one_time
execute as @a[scores={aftertagger_invincibility=0}] run scoreboard players reset @s aftertagger_invincibility


# admin power handler (/tag @r add tagger)
execute as @a[tag=tagger] unless score @s tag.recieve.admin matches 0.. run function tag:misc/tag_recieve_admin
execute as @a[tag=tagger] unless score @s tag.recieve.admin matches 0.. run scoreboard players add @s tag.recieve.admin 0
execute as @a[tag=!tagger] if score @s tag.recieve.admin matches 0.. run scoreboard players reset @s tag.recieve.admin