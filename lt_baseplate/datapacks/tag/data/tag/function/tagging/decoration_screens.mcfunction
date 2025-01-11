# this file represents all the different name colors and marks.
# a PLAYER is a normal player, nothing special.
# a TAGGER is a tagged player, aka "IT".
# a SPECIAL is anything else needed for modified game modes.
# main use for SPECIAL is to represent a frozen player during a game of freeze tag, but is also
# planned to be used as a representation of a "0th patient" in a game of infection tag

execute if score game server matches ..0 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 0
execute if score game server matches 1 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 300
execute if score game server matches 2 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 301
execute if score game server matches 3 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 302
execute if score game server matches 4 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 303
execute if score game server matches 5 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 304
execute if score game server matches 6 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 304
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 0

execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team = 013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. if score @s effect.glowing matches 1.. if score anim.fast server matches 0..1 run scoreboard players set @s screen_effect 402
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team = 013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. if score @s effect.glowing matches 1.. if score anim.fast server matches 2..3 run scoreboard players set @s screen_effect 403
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team =!013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. unless score @s effect.glowing matches 1.. if score @s effect.invisibility matches 1.. run scoreboard players set @s screen_effect 404


execute if score game server matches 1 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 405
execute if score game server matches 2 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 406
execute if score game server matches 3 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 407
execute if score game server matches 4 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 408
execute if score game server matches 5 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 409
execute if score game server matches 6 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 409