#  You are the only one on the server




#  No valid tagger exists
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_tagger_nn
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_tagger_tn
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_tagger_nt
execute as @a[gamemode=adventure] unless entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/no_tagger_tt


# An actual game is in progress
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/normal_nn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. unless score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/normal_tn
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] unless score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/normal_nt
execute as @a[gamemode=adventure] if entity @a[tag=tagger, tag=!safezoned, tag=!afk,gamemode=adventure] if score @s playtime matches 10000.. if score @s playtime.best2 matches 10000.. run function tag:bg_processes/actionbar/normal_tt
