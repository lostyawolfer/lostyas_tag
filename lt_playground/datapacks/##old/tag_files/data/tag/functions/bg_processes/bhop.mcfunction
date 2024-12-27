# speeds
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=2}] run attribute @s generic.movement_speed base set .175
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=3}] run attribute @s generic.movement_speed base set .2
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=4}] run attribute @s generic.movement_speed base set .225
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=5}] run attribute @s generic.movement_speed base set .25
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=6}] run attribute @s generic.movement_speed base set .275
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=7}] run attribute @s generic.movement_speed base set .3
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=8}] run attribute @s generic.movement_speed base set .325
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=9}] run attribute @s generic.movement_speed base set .35
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=10}] run attribute @s generic.movement_speed base set .375
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=11}] run attribute @s generic.movement_speed base set .4
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=12}] run attribute @s generic.movement_speed base set .425
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=13}] run attribute @s generic.movement_speed base set .45
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=14}] run attribute @s generic.movement_speed base set .475
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=15}] run attribute @s generic.movement_speed base set .5
execute as @a[predicate=!tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=16..}] run attribute @s generic.movement_speed base set .525

execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=2}] run attribute @s generic.movement_speed base set .2
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=3}] run attribute @s generic.movement_speed base set .5
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=4}] run attribute @s generic.movement_speed base set .8
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=5}] run attribute @s generic.movement_speed base set 1.1
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=6}] run attribute @s generic.movement_speed base set 1.4
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=7}] run attribute @s generic.movement_speed base set 1.7
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=8}] run attribute @s generic.movement_speed base set 2.0
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=9}] run attribute @s generic.movement_speed base set 2.2
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=10}] run attribute @s generic.movement_speed base set 2.4
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=11}] run attribute @s generic.movement_speed base set 2.6
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=12}] run attribute @s generic.movement_speed base set 2.7
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=13}] run attribute @s generic.movement_speed base set 2.8
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=14}] run attribute @s generic.movement_speed base set 2.9
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=15}] run attribute @s generic.movement_speed base set 2.95
execute as @a[predicate=tag:sneaking, nbt={OnGround: 1b}, scores={jump.bhop=16..}] run attribute @s generic.movement_speed base set 3



#execute as @a[nbt={OnGround: 1b}, scores={jump.bhop=14..18}] run effect give @s minecraft:speed 5 8 true
#execute as @a[nbt={OnGround: 1b}, scores={jump.bhop=19..23}] run effect give @s minecraft:speed 5 11 true
#execute as @a[nbt={OnGround: 1b}, scores={jump.bhop=24..}] run effect give @s minecraft:speed 5 13 true

# add bhop & playtime
execute as @a[scores={jump=1..}] at @s run scoreboard players add @s jump.bhop 1
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players add @s playtime 2
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players set @s playtime.trimp.title_anim 20
#execute as @a[scores={jump=1..}] at @s if block ~ ~ ~ #stairs if score @s jump.bhop matches 8.. run scoreboard players set @s effect.throw 2
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ air run scoreboard players add @s jump.bhop2 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ air run scoreboard players add @s[scores={jump.bhop2=20..}] jump.bhop2.title 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ air run scoreboard players set @s jump.timer 100
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ cave_air run scoreboard players add @s jump.bhop2 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ cave_air run scoreboard players add @s[scores={jump.bhop2=20..}] jump.bhop2.title 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ cave_air run scoreboard players set @s jump.timer 100
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ moving_piston run scoreboard players add @s jump.bhop2 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ moving_piston run scoreboard players add @s[scores={jump.bhop2=20..}] jump.bhop2.title 1
execute as @a[scores={jump=1..}] at @s if block ~ ~2 ~ moving_piston run scoreboard players set @s jump.timer 100
execute as @a[scores={jump=1..}] at @s unless block ~ ~2 ~ air unless block ~ ~2 ~ cave_air unless block ~ ~2 ~ moving_piston run scoreboard players set @s jump.timer 40
#execute as @a[scores={jump.bhop=5..}] at @s run effect give @s jump_boost 1 254 true
#execute as @a[scores={jump=1..}] at @s run title @s[scores={jump.bhop=5..19}] actionbar [{"score":{"name":"@s","objective":"jump.bhop"},"color":"dark_purple"},{"text":" bhop"}]
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run scoreboard players set @s playtime.near_tagger.title_anim 0
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run scoreboard players set @s jump.bhop.title_anim 20
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run scoreboard players add @s playtime 1
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=50..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run scoreboard players add @s playtime 1
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=75..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run scoreboard players add @s playtime 1
#execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}] at @s run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ .5 1.5
execute as @a[scores={jump=1..}] as @s[scores={jump.bhop2=20..}, tag = !afk, tag = !safezoned, gamemode = adventure] at @s if entity @a[tag = tagger, tag = !afk, tag = !safezoned, gamemode = adventure] if block ~ ~2 ~ air run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .25 2

execute as @a[scores={jump=1..}] at @s run playsound jump player @a ~ ~ ~ .5
execute as @a[scores={jump=1..}] at @s run scoreboard players remove @s jump 1


# remove bhop
execute as @a[scores={jump.timer=1..}, nbt={OnGround: 1b}] at @s run scoreboard players remove @s jump.timer 4
execute as @a[scores={jump.timer=..-1}] at @s run scoreboard players set @s jump.timer 0
execute as @a[scores={jump.timer=1..}] at @s run scoreboard players remove @s jump.timer 1

execute as @a[scores={jump.timer=0}] at @s run attribute @s generic.movement_speed base set .15
execute as @a[scores={jump.bhop=..0}] at @s run attribute @s generic.movement_speed base set .15
execute as @a[scores={jump.bhop=..0}] at @s run scoreboard players set @s jump.bhop 0
execute as @a[scores={jump.timer=0}] at @s run scoreboard players set @s jump.bhop 0
execute as @a[scores={jump.timer=0}] at @s run attribute @s generic.movement_speed base set .15
execute as @a[scores={jump.timer=1..40}] at @s run scoreboard players remove @s[scores={jump.bhop=21..}] jump.bhop 20
execute as @a[scores={jump.timer=1..40}] at @s run scoreboard players remove @s[scores={jump.bhop=1..}] jump.bhop 3
execute as @a[scores={jump.timer=0}] at @s run scoreboard players set @s jump.bhop2 0
execute as @a[scores={jump.timer=31..40}] as @s[scores={jump.bhop.title_anim=..13}] at @s run scoreboard players set @s[scores={jump.bhop2=25..49}] jump.bhop2 15
execute as @a[scores={jump.timer=31..40}] as @s[scores={jump.bhop.title_anim=..13}] at @s run scoreboard players set @s[scores={jump.bhop2=50..74}] jump.bhop2 20
execute as @a[scores={jump.timer=31..40}] as @s[scores={jump.bhop.title_anim=..13}] at @s run scoreboard players set @s[scores={jump.bhop2=75..}] jump.bhop2 50
execute as @a[scores={jump.timer=1..30}] as @s[scores={jump.bhop.title_anim=..13}] at @s run scoreboard players set @s jump.bhop2 15
execute as @a[scores={jump.timer=0..30}] as @s[scores={jump.bhop.title_anim=..13}] at @s run scoreboard players set @s jump.bhop2.title 0

execute as @a[scores={jump.timer=0}] at @s run scoreboard players reset @s jump.bhop2