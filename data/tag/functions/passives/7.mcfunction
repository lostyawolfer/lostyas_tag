execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger] unless score @s ab.cd_s matches 1.. run item replace entity @s container.0 with stick{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"Волшебный пендель","color":"gray","bold":true,"italic":false}]'},Tag:["game_passive"],CustomModelData:0}
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger] unless score @s ab.cd_s matches 1.. run scoreboard players set @s ab.p.active 1

execute unless entity @s[tag=!safezoned, gamemode=adventure, tag=!tagger] if score @s ab.cd_s matches 1.. run clear @s stick{Tag:["game_passive"],CustomModelData:0}
execute unless entity @s[tag=!safezoned, gamemode=adventure, tag=!tagger] if score @s ab.cd_s matches 1.. run scoreboard players set @s ab.p.active 0