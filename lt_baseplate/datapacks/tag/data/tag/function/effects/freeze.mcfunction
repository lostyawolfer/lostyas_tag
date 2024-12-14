effect give @s slowness infinite 6 true
effect give @s slow_falling infinite 0 true
tp @s @s
tp @s ~ ~ ~
execute if score generic server matches 0 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 1 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 2 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 3 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 4 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 5 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 6 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 7 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 8 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 9 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 10 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 11 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 12 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 13 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 14 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 15 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 16 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 17 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]
execute if score generic server matches 18 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f1"}]
execute if score generic server matches 19 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/freeze_f2"}]

execute if score @s effect.freeze matches ..0 run effect clear @s slowness
execute if score @s effect.freeze matches ..0 run effect clear @s slow_falling
execute if score @s effect.freeze matches ..0 run clear @s minecraft:heart_of_the_sea
execute if score @s effect.freeze matches ..0 run scoreboard players reset @s effect.freeze

execute if score @s effect.freeze matches 0.. run scoreboard players remove @s effect.freeze 1