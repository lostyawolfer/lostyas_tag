# superspeed
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 800
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 5
execute as @s[scores={ab.use.trigger=1..}] run playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 2 1
execute as @s[scores={ab.use.trigger=1..}] run stopsound @s player minecraft:entity.warden.sonic_boom
execute as @s[scores={ab.use.trigger=1..}] run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 10 1
execute as @s[scores={ab.use.trigger=1..}] run particle minecraft:sonic_boom ~ ~1 ~ 0 .5 0 0 3
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute as @s[scores={ab.use=1..}] run attribute @s gravity base set 1200
execute as @s[scores={ab.use=1..}] run scoreboard players set @s effect.speed 2
execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.bhop2 100
execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.bhop 100
execute as @s[scores={ab.use=1..}] run scoreboard players set @s jump.timer 100
execute as @s[scores={ab.use=1..}, nbt={OnGround:0b}] run scoreboard players add @s ab.use 1
execute as @s[scores={ab.use=1..}] run particle dust{color:63487, scale:1} ~ ~1 ~ .3 .5 .3 0 20

execute as @s[scores={ab.use=1..}] if score @s effect.strong_levitation matches 1.. run scoreboard players set @s ab.use 0
execute as @s[scores={ab.use=1..}] if score @s effect.downed matches 1.. run scoreboard players set @s ab.use 0
execute as @s[scores={ab.use=1..}] if score @s effect.freeze matches 1.. run scoreboard players set @s ab.use 0

execute as @s[scores={ab.use=-1}] run attribute @s gravity base set 0.08
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2