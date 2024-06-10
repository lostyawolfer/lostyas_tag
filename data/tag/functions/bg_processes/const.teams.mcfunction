######     TEAMS MANAGER




## Player

#  Set team to player for everyone who's not in a safezone, not a tagger and in survival
team join x.player @a[team = !x.player, tag = !safezoned, tag = !tagger, gamemode = adventure]




execute if entity @a[tag=tagger] run team modify x.player color aqua
execute unless entity @a[tag=tagger] run team modify x.player color gray





## Tagger

#  Set team
team join a.tagger @a[team = !a.tagger, predicate = !tag:sneaking, tag = !safezoned, tag = tagger, gamemode = adventure]

#  Getting tagged name animation (white -> yellow -> orange)
execute as @a[team=!a.tagger.white, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=1..2}, gamemode = adventure] at @s run team join a.tagger.white
execute as @a[team=!a.tagger.yellow, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=3}, gamemode = adventure] at @s run team join a.tagger.yellow
execute as @a[team=!a.tagger, tag=!safezoned, tag=tagger, predicate=!tag:sneaking, scores={tagger_timer=4..}, gamemode = adventure] at @s run team join a.tagger

#  Getting tagged name animation (white -> yellow -> orange)  while sneaking
execute as @a[team=!a.tagger.white.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=1..2}, gamemode = adventure] at @s run team join a.tagger.white.crouch
execute as @a[team=!a.tagger.yellow.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=3}, gamemode = adventure] at @s run team join a.tagger.yellow.crouch
execute as @a[team=!a.tagger.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking, scores={tagger_timer=4..}, gamemode = adventure] at @s run team join a.tagger.crouch

#  Getting tagged name animation counter
scoreboard players set @a[tag=!tagger, scores={tagger_timer=1..}, gamemode=!adventure] tagger_timer 0

#  Sneaking = invisible mechanic
execute as @a[tag=tagger,predicate=!tag:sneaking, gamemode=adventure, tag=!safezoned] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=tagger,predicate=tag:sneaking, gamemode=adventure, tag=!safezoned] at @s run scoreboard players set @s effect.invis 2
execute as @a[tag=safezoned, tag=tagger, predicate=!tag:sneaking] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players reset @s effect.glow
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players set @s effect.invis 2

#  Cosmetics
execute as @a[tag=tagger, gamemode = adventure] at @s if entity @a[distance=.01..] run particle dust 1 .5 0 1 ~ ~2 ~ 5 5 5 0 1 normal @s
execute as @a[tag=tagger, gamemode = adventure] at @s if entity @a[distance=.01..] run item replace entity @s armor.head with carved_pumpkin
execute as @a[tag=!safezoned, tag=tagger, gamemode=adventure] at @s unless score @s nbs_runsong matches 0.. if entity @a[distance=.01..] run function run_song:play

#  Remove tagger cosmetic from non-taggers and spectators (orange screen overlay)
#execute as @a[tag=tagger] unless entity @a[distance=.01..] at @s run item replace entity @s armor.head with air
#execute as @a[tag=tagger] unless entity @a[distance=.01..] at @s run function run_song:stop

execute as @a[tag=!tagger] at @s run item replace entity @s armor.head with air
execute as @a[gamemode=!adventure] at @s run item replace entity @s armor.head with air
execute as @a[tag=!safezoned, tag=tagger, gamemode=adventure] at @s if score @s nbs_runsong matches 0.. unless entity @a[distance=.01..] run function run_song:stop
execute as @a[tag=safezoned] if score @s nbs_runsong matches 0.. run function run_song:stop
execute as @a[tag=!tagger] if score @s nbs_runsong matches 0.. run function run_song:stop
execute as @a[gamemode=!adventure] if score @s nbs_runsong matches 0.. run function run_song:stop





## Glowing

team join x.player.glow @a[tag = !tagger, tag=!safezoned, team=!x.player.glow, scores={effect.glow=1..}]





## Safezone

#  Set team 
team join y.safezone @a[tag = !tagger, tag=safezoned, team=!y.safezone]
team join y.safezone.tagger @a[tag = tagger, tag=safezoned, team=!y.safezone.tagger]





## Other gamemodes

#  Set team (creative)
team join z.creative @a[team = !z.creative, tag = !tagger, gamemode=creative]
team join z.creative.tagger @a[team = !z.creative.tagger, tag = tagger, gamemode=creative]

#  Replace team if player state changed while being in other gamemode (creative)
execute as @a[team=z.creative.tagger, tag=!tagger] at @s run team join z.creative
execute as @a[team=z.creative, tag=tagger] at @s run team join z.creative.tagger

#  Set team (spectator)
team join z.spectator @a[team = !z.spectator, tag = !tagger, gamemode=spectator, tag=!ab.active.7]
team join z.spectator.tagger @a[team = !z.spectator.tagger, tag = tagger, gamemode=spectator, tag=!ab.active.7]

#  Replace team if player state changed while being in other gamemode (spectator)
execute as @a[team=z.spectator.tagger, tag=!tagger] at @s run team join z.spectator
execute as @a[team=z.spectator, tag=tagger] at @s run team join z.spectator.tagger




