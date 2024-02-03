#  No valid tagger exists
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure, distance=.01..] unless score @s playtime matches 1000.. run function tag:bg_processes/actionbar/no_tagger_normal
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure, distance=.01..] if score @s playtime matches 1000.. run function tag:bg_processes/actionbar/no_tagger_thousand
