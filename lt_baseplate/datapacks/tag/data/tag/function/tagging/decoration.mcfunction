# this file represents all the different name colors and marks.
# a PLAYER is a normal player, nothing special.
# a TAGGER is a tagged player, aka "IT".
# a SPECIAL is anything else needed for modified game modes.
# main use for SPECIAL is to represent a frozen player during a game of freeze tag, but is also
# planned to be used as a representation of a "0th patient" in a game of infection tag



execute if score game server matches 1 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 300
execute if score game server matches 2 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 301
execute if score game server matches 3 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 302
execute if score game server matches 4 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 303
execute if score game server matches 5 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 304
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure] run scoreboard players set @s screen_effect 0

execute if score game server matches 1 run team modify 001tagger color gold
execute if score game server matches 2 run team modify 001tagger color dark_green
execute if score game server matches 3 run team modify 001tagger color red
execute if score game server matches 4 run team modify 001tagger color yellow
execute if score game server matches 5 run team modify 001tagger color gold




execute if entity @s[tag = tagger, tag = special] run tag @s remove special


execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!001tagger] run team join 001tagger
execute if entity @s[              tag = special, tag =!safezone, gamemode = adventure, team =!002special] run team join 002special
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team =!003player] run team join 003player

execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!001tagger] run team join 001tagger
execute if entity @s[              tag = special, tag = normal_player_decoration, team =!002special] run team join 002special
execute if entity @s[tag =!tagger, tag =!special, tag = normal_player_decoration, team =!003player] run team join 003player

execute if entity @s[tag = tagger,                tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!101tagger_safezone] run team join 101tagger_safezone
execute if entity @s[              tag = special, tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!102special_safezone] run team join 102special_safezone
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!103player_safezone] run team join 103player_safezone

execute if entity @s[tag = tagger,                tag =!normal_player_decoration, gamemode = creative, team =!201tagger_creative] run team join 201tagger_creative
execute if entity @s[              tag = special, tag =!normal_player_decoration, gamemode = creative, team =!202special_creative] run team join 202special_creative
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, gamemode = creative, team =!203player_creative] run team join 203player_creative

execute if entity @s[tag = tagger,                tag =!normal_player_decoration, gamemode = spectator, team =!301tagger_spectator] run team join 301tagger_spectator
execute if entity @s[              tag = special, tag =!normal_player_decoration, gamemode = spectator, team =!302special_spectator] run team join 302special_spectator
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, gamemode = spectator, team =!303player_spectator] run team join 303player_spectator




# gamemode specific decor
execute if entity @s[tag = tagger] unless score @s effect.glowing matches 2.. run scoreboard players set @s effect.glowing 1

execute if score game server matches 1 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special
execute if score game server matches 2 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special
execute if score game server matches 3 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special
execute if score game server matches 4 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special

execute if score game server matches 5 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run scoreboard players add @s effect.freeze 1
execute if score game server matches 5..6 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run scoreboard players set @s effect.glowing 1