# from here to the stars
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 600
execute as @s[scores={ab.use.trigger=1..}] unless score @s pa.current matches 5 run scoreboard players set @s effect.strong_levitation 8
execute as @s[scores={ab.use.trigger=1..}] if score @s pa.current matches 5 run scoreboard players set @s effect.strong_levitation 13
execute as @s[scores={ab.use.trigger=1..}] run particle snowflake ~ ~1 ~ .3 .5 .3 .05 50
execute as @s[scores={ab.use.trigger=1..}] run particle explosion_emitter ~ ~1 ~
execute as @s[scores={ab.use.trigger=1..}] run playsound entity.generic.explode player @a ~ ~ ~ .5 2
execute as @s[scores={ab.use.trigger=1..}] run playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1
execute as @s[scores={ab.use.trigger=1..}] run playsound entity.firework_rocket.blast_far player @a ~ ~ ~ 1
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2