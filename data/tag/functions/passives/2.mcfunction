tag @s add air_raid_invulnerable
execute if score game current_event matches 1 run scoreboard players set @s ab.p.active 1
execute unless score game current_event matches 1 run scoreboard players set @s ab.p.active 0