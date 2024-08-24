summon lightning_bolt
scoreboard players add @s p_cd_s 10
scoreboard players add @s ab.cd_s 15
scoreboard players remove @s playtime 35
scoreboard players set @s playtime.title.trigger -2
execute if score @s playtime matches ..-1 run scoreboard players set @s playtime 0
effect clear @s resistance
effect give @s resistance 1 7 true
summon creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1}
