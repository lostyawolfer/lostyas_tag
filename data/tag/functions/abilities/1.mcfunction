##     From here to the stars
#     Throws you up in the air


#  Activation & Work
execute as @s[scores={ab.use=1..}] run execute store result score @s ab.cd_s run scoreboard players get 1 ab.times.cd
execute as @s[scores={ab.use=1..}] run scoreboard players set @s effect.throw 3
execute as @s[scores={ab.use=1..}] run particle snowflake ~ ~1 ~ .3 .5 .3 .05 50
execute as @s[scores={ab.use=1..}] run particle explosion_emitter ~ ~1 ~
execute as @s[scores={ab.use=1..}] run playsound entity.generic.explode player @a ~ ~ ~ .5 2
#execute as @a[tag=ab.active.throw,scores={ab.use=1..}] at @s run title @a title [{"text":"⚠ ","color":"yellow"},{"selector":"@s"}," пукнул ⚠"]
execute as @s[scores={ab.use=1..}] run playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1
execute as @s[scores={ab.use=1..}] run playsound entity.firework_rocket.blast_far player @a ~ ~ ~ 1
execute as @s[scores={ab.use=1..}] run scoreboard players set @s ab.use 0

#  End
execute as @s[scores={ab.use_s=0}] run scoreboard players set @s ab.use_s -1
execute as @s[scores={ab.cd_s=0}] run scoreboard players set @s ab.cd_s -1