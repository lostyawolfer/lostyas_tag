execute as Lostya at @s run spectate @a[tag=tagger, limit=1, sort=nearest] @s
execute as @a[name=Lostya, gamemode=spectator] at @s run title @s actionbar {"selector":"@a[limit=1, sort=nearest, distance=..3, name=!Lostya]"}

execute as @a[name=Lostya, gamemode=spectator] at @s run schedule function tag:bg_processes/tick.temp_spectate 10t