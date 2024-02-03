###                     Ender pearl
##     Customizable with /trigger settings.setpos.pearl

# Clear from people who shouldn't have it (anti-bypass)
execute as @a[scores={p_has=0}, gamemode=adventure] at @s run clear @s minecraft:ender_pearl{Tag:["game"]}




## Cooldown
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=2}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:2,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 2
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=3}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:3,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 3
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=4}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 4
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=5}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:5,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 5
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=6}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:6,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 6
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=7}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:7,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 7
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=8}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:8,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 8
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=9}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:9,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 9
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=10}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:10,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 10
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=11}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:11,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 11
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=12}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:12,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 12
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=13}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:13,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 13
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=14}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:14,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 14
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=15}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:15,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 15
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=16..}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:16,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1




## Pre-recover animation
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=16..}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:0}
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=3}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:-3,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=2}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:-2,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=1}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:-1,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=4..}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:1,display:{Name:'[{"translate":"pearl.cd","color":"#999999","strikethrough":true,"italic":false}]'}} 1
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=0}] run item replace entity @s container.2 with minecraft:heart_of_the_sea{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"pearl.cd","color":"#CCCCCC","strikethrough":true,"italic":false}]'}} 1




## Recover animation
#  Timer
execute as @a[scores={p_has=1}] at @s if entity @s[scores={p_anim=..3}] run scoreboard players add @s p_anim 1
execute as @a[scores={p_has=0}] at @s run scoreboard players set @s p_anim 0
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=1}] as @s[scores={p_anim=1}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:4,display:{Name:'[{"translate":"pearl","color":"#FFFFFF","bold":true,"italic":false}]'}}
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=1}] as @s[scores={p_anim=2}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:3,display:{Name:'[{"translate":"pearl","color":"#8AF1DF","bold":true,"italic":false}]'}}
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=1}] as @s[scores={p_anim=3}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:1,display:{Name:'[{"translate":"pearl","color":"#2BCBAF","bold":true,"italic":false}]'}}
execute as @a[scores={settings.setpos.pearl=0..}, gamemode=!creative] as @s[scores={p_has=1}] as @s[scores={p_anim=4..}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],display:{Name:'[{"translate":"pearl","color":"#339786","bold":true,"italic":false}]'}}




## Cooldown counter
execute as @a[gamemode=adventure,scores={p_cd_ms=1..}] as @s[scores={p_cd_s=1..}] run scoreboard players remove @s p_cd_ms 1
execute as @a unless entity @s[scores={p_cd_s=..0},gamemode=adventure] run scoreboard players set @s p_has 0
execute as @a if entity @s[scores={p_cd_s=..0},gamemode=adventure] run scoreboard players set @s p_has 1
execute as @a[scores={p_cd_ms=..0}] run scoreboard players remove @s p_cd_s 1
execute as @a[scores={p_cd_ms=..0}] run scoreboard players set @s p_cd_ms 20
execute as @a[scores={p_anim=1}] at @s run playsound minecraft:entity.ender_eye.death master @s

scoreboard players set @a[gamemode=creative] p_cd_ms 20
scoreboard players set @a[gamemode=creative] p_cd_s 0



## Usage
#  Set cooldown
execute as @a[scores={p_use=1..},gamemode=adventure] run scoreboard players set @s p_cd_s 15
execute as @a[scores={p_use=1..},gamemode=adventure] run scoreboard players set @s effect.glow 10
execute as @a[scores={p_use=1..}] run scoreboard players set @s p_use 0