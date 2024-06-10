## this runs whenever the server is started or whenever i do /reload

bossbar add version ""
bossbar set minecraft:version max 1
bossbar set minecraft:version visible true

function tag:misc/reset_sidebar
scoreboard players add buildnum buildnum 1
title @a times 0 20 3
tellraw @a {"text":"✔ Reloaded!","color":"green"}