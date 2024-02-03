###                       Tagger stick
##     Customizable with /trigger settings.setpos.tag_stick

# Clear from people who shouldn't have it
execute as @a[tag=!tagger] at @s run clear @s minecraft:blaze_rod{Tag:["game"]}
execute as @a[gamemode=!adventure] at @s run clear @s minecraft:blaze_rod{Tag:["game"]}

execute as @a[tag=!tagger] at @s run clear @s minecraft:stick{Tag:["game"]}
execute as @a[gamemode=!adventure] at @s run clear @s minecraft:stick{Tag:["game"]}



# Item itself
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 0 run item replace entity @s container.0 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger, tag=safezoned, gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 0 run item replace entity @s container.0 with minecraft:stick{display:{Name:'[{"translate":"tag.item","color":"#555555","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}

execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 1 run item replace entity @s container.0 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger, tag=safezoned, gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 1 run item replace entity @s container.0 with minecraft:stick{display:{Name:'[{"translate":"tag.item","color":"#555555","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}

execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 2 run item replace entity @s container.1 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 3 run item replace entity @s container.2 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 4 run item replace entity @s container.3 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 5 run item replace entity @s container.4 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 6 run item replace entity @s container.5 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 7 run item replace entity @s container.6 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 8 run item replace entity @s container.7 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}
execute as @a[tag=tagger,gamemode=adventure] at @s if score @s settings.setpos.tag_stick matches 9 run item replace entity @s container.8 with minecraft:blaze_rod{Enchantments:[{id:"knockback",lvl:2s}],display:{Name:'[{"translate":"tag.item","color":"#FF0000","bold":true,"italic":false}]'},Tag:["game"],CustomModelData:1}