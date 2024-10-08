## player
team join x.player @a[team = !x.player, tag = !safezoned, tag = !tagger, gamemode = adventure]





## tagger
# set team
team join a.tagger @a[team = !a.tagger, predicate = !tag:sneaking, tag = !safezoned, tag = tagger, gamemode = adventure]
# name animation after getting tagged (white -> yellow -> orange)
# main
execute as @a[team=!a.tagger.white, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=1..2}, gamemode = adventure] at @s run team join a.tagger.white
execute as @a[team=!a.tagger.yellow, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=3}, gamemode = adventure] at @s run team join a.tagger.yellow
execute as @a[team=!a.tagger, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=4..}, gamemode = adventure] at @s run team join a.tagger
# sneaking
execute as @a[team=!a.tagger.white.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=1..2}, gamemode = adventure] unless score @s effect.glow matches 0.. at @s run team join a.tagger.white.crouch
execute as @a[team=!a.tagger.yellow.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=3}, gamemode = adventure] unless score @s effect.glow matches 0.. at @s run team join a.tagger.yellow.crouch
execute as @a[team=!a.tagger.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=4..}, gamemode = adventure] unless score @s effect.glow matches 0.. at @s run team join a.tagger.crouch
# glowing while sneaking
execute as @a[team=a.tagger.white.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=1..2}, gamemode = adventure] if score @s effect.glow matches 0.. at @s run team join a.tagger.white.glow
execute as @a[team=a.tagger.yellow.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=3}, gamemode = adventure] if score @s effect.glow matches 0.. at @s run team join a.tagger.yellow.glow
execute as @a[team=a.tagger.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=4..}, gamemode = adventure] if score @s effect.glow matches 0.. at @s run team join a.tagger.glow

# counter
scoreboard players set @a[tag=!tagger, scores={tagger_timer=1..}, gamemode=!adventure] tagger_timer 0

# sneak = invis
execute as @a[tag=tagger,predicate=!tag:sneaking, gamemode=adventure, tag=!safezoned] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=tagger,predicate=tag:sneaking, gamemode=adventure, tag=!safezoned] at @s run scoreboard players set @s effect.invis 2
execute as @a[tag=safezoned, tag=tagger, predicate=!tag:sneaking] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players reset @s effect.glow
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players set @s effect.invis 2

# cosmetics
execute as @a[tag=tagger, gamemode = adventure] at @s if entity @a[distance=.01..] run particle dust 1 .5 0 1 ~ ~2 ~ 5 5 5 0 1 normal @s
execute as @a[tag=tagger, gamemode = adventure] at @s if entity @a[distance=.01..] run item replace entity @s armor.head with carved_pumpkin
execute as @a[tag=!safezoned, tag=tagger, gamemode=adventure] at @s unless score @s nbs_runsong matches 0.. if entity @a[distance=.01..] unless score game event.current_major_event matches 1.. run function run_song:play

# remove cosmetics from non-taggers
execute as @a[tag=!tagger] at @s run item replace entity @s armor.head with air
execute as @a[gamemode=!adventure] at @s run item replace entity @s armor.head with air
execute as @a[tag=!safezoned, tag=tagger, gamemode=adventure] at @s if score @s nbs_runsong matches 0.. unless entity @a[distance=.01..] run function run_song:stop
execute if score game event.current_major_event matches 1.. as @a run function run_song:stop
execute as @a[tag=safezoned] if score @s nbs_runsong matches 0.. run function run_song:stop
execute as @a[tag=!tagger] if score @s nbs_runsong matches 0.. run function run_song:stop
execute as @a[gamemode=!adventure] if score @s nbs_runsong matches 0.. run function run_song:stop
# run_song is an external datapack, generated by note block studio

# glow
team join x.player.glow @a[tag = !tagger, tag=!safezoned, team=!x.player.glow, scores={effect.glow=1..}]



## safezone
# set team 
team join y.safezone @a[tag = !tagger, tag=safezoned, team=!y.safezone]
team join y.safezone.tagger @a[tag = tagger, tag=safezoned, team=!y.safezone.tagger]



## other gamemodes
# creative
# set team
team join z.creative @a[team = !z.creative, tag = !tagger, gamemode=creative]
team join z.creative.tagger @a[team = !z.creative.tagger, tag = tagger, gamemode=creative]
# replace team if player state changed while being in other gamemode
execute as @a[team=z.creative.tagger, tag=!tagger] at @s run team join z.creative
execute as @a[team=z.creative, tag=tagger] at @s run team join z.creative.tagger

# spectator
# set team
team join z.spectator @a[team = !z.spectator, tag = !tagger, gamemode=spectator, tag=!ab.active.7]
team join z.spectator.tagger @a[team = !z.spectator.tagger, tag = tagger, gamemode=spectator, tag=!ab.active.7]
# replace team if player state changed while being in other gamemode
execute as @a[team=z.spectator.tagger, tag=!tagger] at @s run team join z.spectator
execute as @a[team=z.spectator, tag=tagger] at @s run team join z.spectator.tagger