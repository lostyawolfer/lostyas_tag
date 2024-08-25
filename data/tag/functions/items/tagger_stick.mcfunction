###                       Tagger stick
##     Customizable with /trigger settings.setpos.tag_stick

# Clear from people who shouldn't have it
execute as @a[tag=!tagger] at @s run clear @s minecraft:blaze_rod{Tag:["game"]}
execute as @a[gamemode=!adventure] at @s run clear @s minecraft:blaze_rod{Tag:["game"]}

execute as @a[tag=!tagger] at @s run clear @s minecraft:stick{Tag:["game"]}
execute as @a[gamemode=!adventure] at @s run clear @s minecraft:stick{Tag:["game"]}



# Item itself
execute as @a[tag=tagger,gamemode=adventure, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s if entity @a[distance=.01..] run item replace entity @s container.0 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger, tag=safezoned, gamemode=adventure] as @s[scores={current_menu_page=0}] at @s run item replace entity @s container.0 with minecraft:stick{display:{Name:'[{"translate":"tag.item","color":"#555555","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s unless entity @a[distance=.01..] run item replace entity @s container.0 with minecraft:stick{display:{Name:'[{"translate":"tag.item","color":"#555555","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
