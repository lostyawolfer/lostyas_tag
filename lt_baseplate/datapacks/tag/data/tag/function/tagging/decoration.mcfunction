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



execute unless score game server matches 4 if entity @s[tag = tagger, tag = safezone, gamemode = adventure] run item replace entity @s container.0 with stick[custom_data={game: 3}, custom_name='{"text": "Ты вода!", "color": "gray", "bold": true, "italic": false}']
execute if score game server matches 1 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=1, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}', enchantments={levels:{knockback: 2}, show_in_tooltip: true}, enchantment_glint_override=false]
execute if score game server matches 2 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=2, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}', enchantments={levels:{knockback: 2}, show_in_tooltip: true}, enchantment_glint_override=false]
execute if score game server matches 3 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=3, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}', enchantments={levels:{knockback: 2}, show_in_tooltip: true}, enchantment_glint_override=false]
execute if score game server matches 4 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=4, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FFFF00", "bold": true, "italic": false}']
execute if score game server matches 5 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=5, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}', enchantments={levels:{knockback: 2}, show_in_tooltip: true}, enchantment_glint_override=false]
execute if score game server matches 6 if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run item replace entity @s container.0 with blaze_rod[custom_model_data=6, custom_data={game: 2}, custom_name='{"text": "Ты вода!", "color": "#FF0000", "bold": true, "italic": false}', enchantments={levels:{knockback: 2}, show_in_tooltip: true}, enchantment_glint_override=false]
execute unless entity @s[tag = tagger] run clear @s *[custom_data={game: 2}]
execute unless score game server matches 1.. run clear @s *[custom_data={game: 2}]
execute unless score game server matches 1.. run clear @s *[custom_data={game: 3}]
execute unless score game server matches 4 if entity @s[tag = tagger, tag = safezone] run clear @s *[custom_data={game: 2}]
execute unless score game server matches 4 if entity @s[tag = tagger, tag =!safezone] run clear @s *[custom_data={game: 3}]


execute if entity @s[tag = tagger, tag = special] run tag @s remove special


execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!001tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 3.. run team join 001tagger
execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!011tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 2 run team join 011tagger
execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!021tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 1 run team join 021tagger
execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!001tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 3.. run team join 001tagger_crouch
execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!011tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 2 run team join 011tagger_crouch
execute if entity @s[tag = tagger,                tag =!safezone, gamemode = adventure, team =!021tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 1 run team join 021tagger_crouch
execute if entity @s[              tag = special, tag =!safezone, gamemode = adventure, team =!002special] run team join 002special
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team =!003player] unless score @s effect.glowing matches 1.. run team join 003player
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team =!013player_glow] if score @s effect.glowing matches 1.. run team join 013player_glow

execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!001tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 3.. run team join 001tagger
execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!011tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 2 run team join 011tagger
execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!021tagger] unless score @s is_sneaking matches 1 if score @s stat.tagger_time matches 1 run team join 021tagger
execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!001tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 3.. run team join 001tagger_crouch
execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!011tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 2 run team join 011tagger_crouch
execute if entity @s[tag = tagger,                tag = normal_player_decoration, team =!021tagger_crouch] if score @s is_sneaking matches 1 if score @s stat.tagger_time matches 1 run team join 021tagger_crouch
execute if entity @s[              tag = special, tag = normal_player_decoration, team =!002special] run team join 002special
execute if entity @s[tag =!tagger, tag =!special, tag = normal_player_decoration, team =!003player] unless score @s effect.glowing matches 1.. run team join 003player
execute if entity @s[tag =!tagger, tag =!special, tag = normal_player_decoration, team =!013player_glow] if score @s effect.glowing matches 1.. run team join 013player_glow

execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team = 013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. if score @s effect.glowing matches 1.. if score glowing server matches 0..1 run scoreboard players set @s screen_effect 402
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team = 013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. if score @s effect.glowing matches 1.. if score glowing server matches 2..3 run scoreboard players set @s screen_effect 403
execute if entity @s[tag =!tagger, tag =!special, tag =!safezone, gamemode = adventure, team =!013player_glow] unless score @s effect.downed matches 1.. unless score @s effect.freeze matches 1.. unless score @s effect.glowing matches 1.. if score @s effect.invisibility matches 1.. run scoreboard players set @s screen_effect 404


execute if entity @s[tag = tagger,                tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!101tagger_safezone] run team join 101tagger_safezone
execute if entity @s[              tag = special, tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!102special_safezone] run team join 102special_safezone
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, tag = safezone, gamemode = adventure, team =!103player_safezone] run team join 103player_safezone

execute if entity @s[tag = tagger,                tag =!normal_player_decoration, gamemode = creative, team =!201tagger_creative] run team join 201tagger_creative
execute if entity @s[              tag = special, tag =!normal_player_decoration, gamemode = creative, team =!202special_creative] run team join 202special_creative
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, gamemode = creative, team =!203player_creative] run team join 203player_creative

execute if entity @s[tag = tagger,                tag =!normal_player_decoration, gamemode = spectator, team =!301tagger_spectator] run team join 301tagger_spectator
execute if entity @s[              tag = special, tag =!normal_player_decoration, gamemode = spectator, team =!302special_spectator] run team join 302special_spectator
execute if entity @s[tag =!tagger, tag =!special, tag =!normal_player_decoration, gamemode = spectator, team =!303player_spectator] run team join 303player_spectator


# if the game type is crown (id 4), no invisibility on crouch
execute if score game server matches 4 if entity @s[tag = tagger] unless score @s effect.glowing matches 2.. run scoreboard players set @s effect.glowing 1

# else, let the tagger sneak to become invisible
execute if score game server matches 1.. unless score game server matches 4 if entity @s[tag = tagger] unless score @s effect.glowing matches 2.. if score @s is_sneaking matches 0 run scoreboard players set @s effect.glowing 1
execute if score game server matches 1.. unless score game server matches 4 if entity @s[tag = tagger] unless score @s effect.invisibility matches 2.. if score @s is_sneaking matches 1 run scoreboard players set @s effect.invisibility 1

# visual effect if the tagger is sneaking
execute if score game server matches 1 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 405
execute if score game server matches 2 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 406
execute if score game server matches 3 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 407
execute if score game server matches 4 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 408
execute if score game server matches 5 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 409
execute if score game server matches 6 if entity @s[tag = tagger] if score @s effect.invisibility matches 1.. unless score @s effect.glowing matches 1.. run scoreboard players set @s screen_effect 409


execute if score game server matches 1.. if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] unless score @s nbs_tagyoureit_t matches -1.. run function tag_music:tag_youre_it/play
execute if score game server matches 1.. if entity @s[tag = tagger, tag =!safezone, gamemode = adventure] run tag @s add nbs_tagyoureit
execute if score game server matches 1.. if entity @s[tag =!tagger] if score @s nbs_tagyoureit_t matches -1.. run function tag_music:tag_youre_it/stop
execute if score game server matches 1.. if entity @s[gamemode =!adventure] if score @s nbs_tagyoureit_t matches -1.. run function tag_music:tag_youre_it/stop
execute if score game server matches 1.. if entity @s[tag = tagger, tag = safezone] run tag @s remove nbs_tagyoureit

execute unless score game server matches 1.. if score @s nbs_tagyoureit_t matches -1.. run function tag_music:tag_youre_it/stop



# gamemode specific decor
execute if score game server matches 1 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special
execute if score game server matches 2 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special
execute if score game server matches 4 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s remove special

execute if score game server matches 3 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run tag @s add dead
execute if score game server matches 5 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run scoreboard players add @s effect.freeze 1
execute if score game server matches 5..6 if entity @s[tag = special, tag =!safezone, gamemode = adventure] run scoreboard players set @s effect.glowing 1