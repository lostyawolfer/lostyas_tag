## Tagged people
execute as @a[team=!a.tagger, tag=!safezoned, tag=tagger, predicate=!tag:sneaking] at @s run team join a.tagger
execute as @a[team=!a.tagger.crouch, tag=!safezoned, tag=tagger, predicate=tag:sneaking] at @s run team join a.tagger.crouch

execute as @a[team=a.tagger, tag=!tagger] at @s unless score @s effect.glow matches 2.. run team join x.player
execute as @a[team=a.tagger.crouch, tag=!tagger] at @s unless score @s effect.glow matches 2.. run team join x.player

execute as @a[team=y.safezoned.tagger, tag=!tagger] at @s unless score @s effect.glow matches 2.. run team join y.safezoned
execute as @a[team=y.safezoned, tag=tagger] at @s unless score @s effect.glow matches 2.. run team join y.safezoned.tagger

execute as @a[team=z.othergm.tagger, tag=!tagger] at @s unless score @s effect.glow matches 2.. run team join z.othergm
execute as @a[team=z.othergm, tag=tagger] at @s unless score @s effect.glow matches 2.. run team join z.othergm.tagger



execute as @a[tag=tagger,predicate=!tag:sneaking] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=tagger,predicate=tag:sneaking] at @s run scoreboard players set @s effect.invis 2
execute as @a[tag=safezoned, tag=tagger, predicate=!tag:sneaking] at @s unless score @s effect.glow matches 2.. run scoreboard players set @s effect.glow 2
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players reset @s effect.glow
execute as @a[tag=safezoned, tag=tagger, predicate=tag:sneaking] at @s run scoreboard players set @s effect.invis 2
#execute as @a[team=tagger,name="Lostya"] at @s run effect give @s minecraft:nausea 7 0 true
execute as @a[tag=!tagger] at @s run item replace entity @s armor.head with air
execute as @a[tag=tagger] at @s run item replace entity @s armor.head with carved_pumpkin
#execute as @a at @s run attribute @s generic.movement_speed base set .15

team join x.player @a[team = !x.player, tag = !safezoned, tag = !tagger, gamemode = adventure]
execute as @a[tag=!safezoned] run team join player @s[team=!a.tagger.crouch,team=!a.tagger, team = !z.othergm.tagger, team = !z.othergm, team=!y.safezoned.tagger, team = !menu, team = !menu_tagger, team = !x.player]

#execute as @a[team=tagger] at @s if score notifanim notifanim matches 1 run playsound block.fire.ambient ambient @s ~ ~ ~ .5 1
execute as @a[tag=tagger] at @s run particle dust 1 .5 0 1 ~ ~2 ~ 5 5 5 0 1 normal @s

team join z.othergm @a[tag = !tagger, gamemode=!adventure, team = !menu, team = !menu_tagger]
team join z.othergm.tagger @a[tag = tagger, gamemode=!adventure, team = !menu, team = !menu_tagger]

team join a.tagger @a[team=z.othergm, gamemode = adventure]
team join x.player @a[team=z.othergm.tagger, gamemode = adventure]