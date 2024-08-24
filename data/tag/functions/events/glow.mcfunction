execute store result score playercount event if entity @a[gamemode=adventure, tag=!safezoned, tag=!afk]
execute if score playercount event matches 2.. if entity @a[tag=tagger, tag=!safezoned, tag=!afk, gamemode=adventure] run scoreboard players add glow event 1
execute if score glow event matches 2000.. run title @a times 5 20 40
execute if score glow event matches 2000.. run title @a[tag = !tagger] title {"translate":"event.glowing.title","color":"#00FFFF"}
execute if score glow event matches 2000.. run title @a[tag = tagger] title {"translate":"event.glowing.title","color":"#00FFFF"}
execute if score glow event matches 2000.. run tellraw @a {"translate":"event.glowing.chat","color":"aqua"}
execute if score glow event matches 2000.. run title @a[tag = !tagger] subtitle {"translate":"event.glowing.subtitle","color":"#00FFFF"}
execute if score glow event matches 2000.. run title @a[tag = tagger] subtitle {"translate":"event.glowing.subtitle_tag","color":"gold"}
execute if score glow event matches 2000.. as @a at @s run playsound glowing master @s ~ ~ ~
execute if score glow event matches 2000.. run scoreboard players set @a[tag = !tagger, gamemode=adventure, tag=!safezoned] effect.glow 100
execute if score glow event matches 2000.. run scoreboard players set @a[tag = tagger, gamemode=adventure, tag=!safezoned] effect.glow 100
execute if score glow event matches 2000.. run scoreboard players set glow event 0
