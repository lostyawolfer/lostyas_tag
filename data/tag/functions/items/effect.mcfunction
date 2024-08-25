###                     Visibility effects



## None
execute as @a[gamemode=adventure, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s unless score @s effect.glow matches 1.. unless score @s effect.invis matches 1.. run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:1,display:{Name:'[{"translate":"item.effect.generic","color":"gray","italic":false}]'}}



## Glowing
execute as @a[gamemode=adventure, tag=!tagger, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s if score @s effect.glow matches 1.. unless score @s effect.invis matches 1.. run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"item.effect.glowing","color":"aqua","italic":false,"bold":true}]'}}
execute as @a[gamemode=adventure, tag=tagger,  tag=!safezoned] as @s[scores={current_menu_page=0}] at @s if score @s effect.glow matches 1.. unless score @s effect.invis matches 1.. run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:5,display:{Name:'[{"translate":"item.effect.glowing_tagger","color":"gold","italic":false,"bold":true}]'}}
#  Glowing while invisible
execute as @a[gamemode=adventure, tag=!tagger, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s if score @s effect.glow matches 1.. if score @s effect.invis matches 1.. run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:6,display:{Name:'[{"translate":"item.effect.glowing_invisible","color":"red","italic":false,"bold":true}]'}}
execute as @a[gamemode=adventure, tag=tagger,  tag=!safezoned] as @s[scores={current_menu_page=0}] at @s if score @s effect.glow matches 1.. if score @s effect.invis matches 1.. run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:7,display:{Name:'[{"translate":"item.effect.glowing_invisible","color":"red","italic":false,"bold":true}]'}}



## Invisible
execute as @a[gamemode=adventure, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s unless score @s effect.glow matches 1.. if score @s effect.invis matches 1.. unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:2,display:{Name:'[{"translate":"item.effect.invisible","color":"dark_gray","italic":false,"bold":true}]'}}
execute as @a[gamemode=adventure, tag=!safezoned] as @s[scores={current_menu_page=0}] at @s unless score @s effect.glow matches 1.. if score @s effect.invis matches 1.. if entity @s[nbt={SelectedItem:{}}] run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:3,display:{Name:'[{"translate":"item.effect.invisible.item","color":"dark_red","italic":false,"bold":true}]'}}


## Safezone
execute as @a[gamemode=adventure, tag=safezoned] as @s[scores={current_menu_page=0}] at @s run item replace entity @s container.7 with minecraft:ink_sac{Tag:["game"],CustomModelData:8,display:{Name:'[{"translate":"Ты в сейфзоне","color":"dark_green","italic":false}]'}}
