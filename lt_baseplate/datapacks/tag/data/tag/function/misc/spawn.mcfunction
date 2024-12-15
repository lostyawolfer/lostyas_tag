tag @s remove dead
execute if score @s anim.death matches ..-1 run scoreboard players remove @s anim.death 1

execute if score @s anim.death matches -2 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_death_f0"}]
execute if score @s anim.death matches -3 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_death_f1"}]
execute if score @s anim.death matches -4 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_death_f2"}]

execute if score @s anim.death matches -12 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f0"}]
execute if score @s anim.death matches -13 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f1"}]
execute if score @s anim.death matches -14 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f2"}]


execute if score @s anim.death matches -4 run title @s actionbar ""
execute if score @s anim.death matches -14 run title @s actionbar ""
execute if score @s anim.death matches -20..-15 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f3"}]
execute if score @s anim.death matches -15 run function tag:misc/spawntp
execute if score @s anim.death matches -21 run effect give @s blindness 1 0 true
execute if score @s anim.death matches -15 run gamemode spectator @s
execute if score @s anim.death matches -22 run gamemode adventure @s




execute if score @s anim.death matches -21 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f4"}]
execute if score @s anim.death matches -22 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f5"}]
execute if score @s anim.death matches -23 run item replace entity @s armor.head with minecraft:heart_of_the_sea[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "tag:vignettes/transition_f6"}]





execute if score @s anim.death matches -4 run scoreboard players set @s anim.death -14
execute if score @s anim.death matches ..-24 run clear @s
execute if score @s anim.death matches ..-24 run scoreboard players reset @s anim.death