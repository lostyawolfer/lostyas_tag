###                     Ender pearl
##     Customizable with /trigger settings.setpos.pearl

# Clear from people who shouldn't have it (anti-bypass)
execute as @a[scores={p_has=0},gamemode=adventure] at @s run clear @s minecraft:ender_pearl




## Cooldown
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=2}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:2} 2
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=3}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:3} 3
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=4}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:4} 4
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=5}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:5} 5
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=6}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:6} 6
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=7}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:7} 7
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=8}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:8} 8
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=9}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:9} 9
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=10}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:10} 10
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=11}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:11} 11
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=12}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:12} 12
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=13}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:13} 13
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=14}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:14} 14
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=15}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:15} 15
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=16..}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:16} 1




## Pre-recover animation
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=16..}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:0}
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=3}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:-3} 1
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=2}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:-2} 1
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=1}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:-1} 1
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=4..}] run item replace entity @s container.2 with minecraft:ender_eye{Tag:["game"],CustomModelData:1} 1
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=0}] as @s[scores={p_cd_s=1}] as @s[scores={p_cd_ms=0}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:4} 1




## Recover animation
#  Pos: default
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=1}] as @s[scores={p_anim=4..}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"]}
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=1}] as @s[scores={p_anim=1}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:4}
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=1}] as @s[scores={p_anim=2}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:3}
execute as @a[scores={settings.setpos.pearl=0..}] as @s[scores={p_has=1}] as @s[scores={p_anim=3}] run item replace entity @s container.2 with minecraft:ender_pearl{Tag:["game"],CustomModelData:1}
