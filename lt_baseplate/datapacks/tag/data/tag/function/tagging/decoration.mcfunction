# this file represents all the different name colors and marks.
# a PLAYER is a normal player, nothing special.
# a TAGGER is a tagged player, aka "IT".
# a SPECIAL is anything else needed for modified game modes.
# main use is to represent a frozen player during a game of freeze tag, but is also
# planned to be used as a representation of a "0th patient" in a game of infection tag



execute if entity @s[tag = tagger, tag = special] run tag @s remove special

execute if entity @s[tag = tagger] run team join 0tagger
execute if entity @s[tag = special] run team join 1special

execute if entity @s[tag =!tagger, tag =!special] run team join 2player



execute if entity @s[tag = tagger] unless score @s effect.glowing matches 2.. run scoreboard players set @s effect.glowing 1

# TODO: when adding new gamemodes except vanilla tag,
#       make it use the "special" role differently by calling
#       other functions depending on the game mode.