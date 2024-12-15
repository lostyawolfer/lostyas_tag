execute unless score @s anim.death matches 17.. unless score @s anim.death matches -1 run scoreboard players add @s anim.death 1
title @s actionbar {"text": "you are a spectator", "color": "red"}
execute if score @s anim.death matches 1 run damage @s .1
execute if score @s anim.death matches 1 run playsound tag:death master @s ~ ~ ~ 10
execute if score @s anim.death matches 1 run playsound tag:death_main master @s ~ ~ ~ 10
gamemode spectator @s
execute if score @s anim.death matches 1 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f0"}]
execute if score @s anim.death matches 2 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f1"}]
execute if score @s anim.death matches 3 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f2"}]
execute if score @s anim.death matches 4 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f3"}]
execute if score @s anim.death matches 5 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f4"}]
execute if score @s anim.death matches 6 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f5"}]
execute if score @s anim.death matches 7 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f6"}]
execute if score @s anim.death matches 8 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f7"}]
execute if score @s anim.death matches 9 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f8"}]
execute if score @s anim.death matches 10 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f9"}]
execute if score @s anim.death matches 11 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f10"}]
execute if score @s anim.death matches 12 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f11"}]
execute if score @s anim.death matches 13 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f12"}]
execute if score @s anim.death matches 14 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f13"}]
execute if score @s anim.death matches 15..16 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f14"}]
execute if score @s anim.death matches 17 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/death_f15"}]