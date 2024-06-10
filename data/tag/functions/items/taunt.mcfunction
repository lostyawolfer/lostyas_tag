###                     Taunt






## Cooldown
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=2}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:2,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 2
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=3}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:3,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 3
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=4}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 4
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=5}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:5,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 5
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=6}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:6,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 6
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=7}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:7,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 7
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=16..}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:16,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1




## Pre-recover animation
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=16..}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:0}
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=1}] as @s[scores={t.cd.ms=3}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:-3,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=1}] as @s[scores={t.cd.ms=2}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:-2,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=1}] as @s[scores={t.cd.ms=1}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:-1,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=1}] as @s[scores={t.cd.ms=4..}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:1,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[gamemode=!creative] as @s[scores={t.has=0}] as @s[scores={t.cd.s=1}] as @s[scores={t.cd.ms=0}] run item replace entity @s container.6 with minecraft:brick{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"goat_horn.item.cd","color":"#CCCCCC","strikethrough":true,"italic":false}]'}} 1




## Recover animation
#  Timer
execute as @a[scores={t.has=1}] at @s if entity @s[scores={t.anim=..3}] run scoreboard players add @s t.anim 1
execute as @a[scores={t.has=0}] at @s run scoreboard players set @s t.anim 0

execute as @a[gamemode=!creative] as @s[scores={t.has=1}] as @s[scores={t.anim=1}] run item replace entity @s container.6 with minecraft:goat_horn{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"goat_horn.item","color":"#FFFFFF","bold":true,"italic":false}]'}, instrument: "minecraft:call_goat_horn"}
execute as @a[gamemode=!creative] as @s[scores={t.has=1}] as @s[scores={t.anim=2}] run item replace entity @s container.6 with minecraft:goat_horn{Tag:["game"],CustomModelData:3,display:{Name:'[{"translate":"goat_horn.item","color":"#EEEEE0","bold":true,"italic":false}]'}, instrument: "minecraft:call_goat_horn"}
execute as @a[gamemode=!creative] as @s[scores={t.has=1}] as @s[scores={t.anim=3}] run item replace entity @s container.6 with minecraft:goat_horn{Tag:["game"],CustomModelData:1,display:{Name:'[{"translate":"goat_horn.item","color":"#CCCCA4","bold":true,"italic":false}]'}, instrument: "minecraft:call_goat_horn"}
execute as @a[gamemode=!creative] as @s[scores={t.has=1}] as @s[scores={t.anim=4..}] run item replace entity @s container.6 with minecraft:goat_horn{Tag:["game"],display:{Name:'[{"translate":"goat_horn.item","color":"#B7B77F","bold":true,"italic":false}]'}, instrument: "minecraft:call_goat_horn"}




## Cooldown counter
execute as @a[gamemode=adventure,scores={t.cd.ms=1..}] as @s[scores={t.cd.s=1..}] run scoreboard players remove @s t.cd.ms 1
execute as @a unless entity @s[scores={t.cd.s=..0},gamemode=adventure] run scoreboard players set @s t.has 0
execute as @a if entity @s[scores={t.cd.s=..0},gamemode=adventure] run scoreboard players set @s t.has 1
execute as @a[scores={t.cd.ms=..0}] run scoreboard players remove @s t.cd.s 1
execute as @a[scores={t.cd.ms=..0}] run scoreboard players set @s t.cd.ms 20
execute as @a[scores={t.anim=1}] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ .2 2
execute as @a[scores={t.anim=1}] at @s run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ .2 2
execute as @a[scores={t.anim=4}] at @s run stopsound @s master minecraft:item.goat_horn.sound.1

scoreboard players set @a[gamemode=creative] t.cd.ms 20
scoreboard players set @a[gamemode=creative] t.cd.s 0



## Usage
#  Set cooldown
execute as @a[scores={t.use=1..},gamemode=adventure] run scoreboard players set @s t.cd.s 7
#execute as @a[scores={t.use=1..},gamemode=adventure, tag=!safezoned] run scoreboard players set @s effect.glow 40
execute as @a[scores={t.use=1..},gamemode=adventure, tag=afk] run tag @s remove afk
execute as @a[scores={t.use=1..}] run scoreboard players set @s t.use 0


# Clear from people who shouldn't have it (anti-bypass)
execute as @a[scores={t.has=0}, gamemode=adventure] at @s run clear @s minecraft:goat_horn{Tag:["game"]}