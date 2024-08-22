## playtime
execute as @a run scoreboard players operation @s playtime.display = @s playtime

execute as @a run scoreboard players operation @s playtime.display.k = @s playtime.display
execute as @a run scoreboard players operation @s playtime.display.k /= 1000 consts

execute as @a run scoreboard players operation @s playtime.display.kdec = @s playtime.display
execute as @a run scoreboard players operation @s playtime.display.kdec %= 1000 consts
execute as @a run scoreboard players operation @s playtime.display.kdec /= 100 consts



## best playtime
execute as @a unless score @s playtime.best matches 0.. run scoreboard players set @s playtime.best 0
execute as @a if score @s playtime > @s playtime.best run scoreboard players operation @s playtime.best = @s playtime
execute as @a if score @s playtime matches 0 run scoreboard players operation @s playtime.best2 = @s playtime.best

execute as @a run scoreboard players operation @s playtime.best2.k = @s playtime.best2
execute as @a run scoreboard players operation @s playtime.best2.k /= 1000 consts

execute as @a run scoreboard players operation @s playtime.best2.kdec = @s playtime.best2
execute as @a run scoreboard players operation @s playtime.best2.kdec %= 1000 consts
execute as @a run scoreboard players operation @s playtime.best2.kdec /= 100 consts

# the difference between playtime.best and playtime.best2 is:
# "playtime.best" updates in real time as soon as "playtime" is more than "playtime.best"
# "playtime.best2" updates whenever the player gets tagged and sets itself to current player's "playtime.best"
# btw this system results in an impossible bug that if "playtime.best" is less than "playtime.best2" then on getti" is less than "playtime.best2"



## afk timer
execute as @a[scores={afk.timer=..600}, tag=!afk] run scoreboard players add @a[scores={stat.speed2=0..9}] afk.timer 1
execute as @a[scores={afk.timer=64..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 32
execute as @a[scores={afk.timer=32..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 8
execute as @a[scores={afk.timer=16..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 4
execute as @a[scores={afk.timer=4..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 2
execute as @a[scores={afk.timer=2..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 1
execute as @a[scores={afk.timer=1..}, tag=!afk] run scoreboard players remove @s[scores={stat.speed2=10..}] afk.timer 1



## speed stat


execute as @a run scoreboard players operation @s stat.speed.prev = @s stat.speed2
execute as @a run scoreboard players operation @s stat.speed.half = @s stat.speed2
execute as @a run scoreboard players operation @s stat.speed.half *= 2 consts
execute as @a[scores={stat.speed.flag=2}] run scoreboard players set @s stat.speed.prev 0

execute as @a[scores={stat.speed2=1..}] run scoreboard players set @s stat.speed2 0

execute as @a[scores={walk2=0..998}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk2
execute as @a[scores={walk2=0..}] run scoreboard players set @s walk2 0

execute as @a[scores={walk=1..}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk
execute as @a[scores={walk=1..}] run scoreboard players set @s walk 0

execute as @a[scores={walk3=1..}, nbt={OnGround:1b}] run scoreboard players operation @s stat.speed2 = @s walk3
execute as @a[scores={walk3=1..}] run scoreboard players set @s walk3 0

execute as @a[scores={walk5=1..}] run scoreboard players operation @s stat.speed2 = @s walk5
execute as @a[scores={walk5=1..}] run scoreboard players set @s walk5 0

execute as @a[scores={walk4=0..}, nbt={OnGround:0b}] run scoreboard players operation @s stat.speed2 = @s walk4
execute as @a[scores={walk4=1..}] run scoreboard players set @s walk4 0


# execute as @a[scores={stat.speed.flag=4..}] run scoreboard players operation @s stat.speed2 /= 2 consts
# execute as @a[scores={stat.speed.flag=1..3}] run scoreboard players add @s stat.speed.flag 1
# execute as @a[scores={stat.speed.flag=4..}] run scoreboard players reset @s stat.speed.flag


# #execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 matches 0 if score @s stat.speed.flag matches 0.. run tellraw Lostya [{"selector":"@s"}, " is having the speed bug"]

# execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 matches 0 if score @s stat.speed.flag matches 0.. run scoreboard players operation @s stat.speed2 /= 2 consts
# execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 matches 0 if score @s stat.speed.flag matches 0.. run scoreboard players set @s stat.speed.flag 1
# execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 matches 0 unless score @s stat.speed.flag matches 0.. run scoreboard players set @s stat.speed.flag 1
# execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 matches 0 run scoreboard players operation @s stat.speed2 = @s stat.speed.prev

# execute as @a[scores={stat.speed.prev=7..}] if score @s stat.speed2 = @s stat.speed.half run scoreboard players operation @s stat.speed2 = @s stat.speed.prev




execute as @a[scores={stat.speed2=999..}] run scoreboard players set @s stat.speed2 999



## getting tagged stat
execute as @a run scoreboard players operation @s stat.get_tagged.k = @s stat.get_tagged
execute as @a run scoreboard players operation @s stat.get_tagged.k /= 1000 consts

execute as @a run scoreboard players operation @s stat.get_tagged.kdec = @s stat.get_tagged
execute as @a run scoreboard players operation @s stat.get_tagged.kdec %= 1000 consts
execute as @a run scoreboard players operation @s stat.get_tagged.kdec /= 100 consts



