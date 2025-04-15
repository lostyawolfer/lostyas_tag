execute if score @s effect.downed matches 1.. run return 1
execute unless entity @s[gamemode=adventure] run return 2
execute if entity @s[tag=safezone] run return 3

summon lightning_bolt
scoreboard players add @s p.cd 100
scoreboard players add @s ab.cd 200
effect clear @s resistance
effect give @s resistance 1 7 true
summon creeper ^ ^ ^ {Fuse: 0, ExplosionRadius: 1, Invulnerable: 1b, Silent: 1b}