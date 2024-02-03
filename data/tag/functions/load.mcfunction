bossbar add version ""
bossbar set minecraft:version color yellow
bossbar set minecraft:version max 1
bossbar set minecraft:version value 1
bossbar set minecraft:version visible true

function tag:reset_sidebar
scoreboard players add buildnum buildnum 1
title @a times 0 20 3
tellraw @a {"text":"✔ Reloaded!","color":"green"}