execute as @a at @s positioned ~ ~ ~ run tp @s ~ ~ ~
execute as @a if entity @s[dx=2,dy=0,dz=2] run say Possible speed hack!

scoreboard objectives add attackCount minecraft.used:minecraft.diamond_sword
scoreboard objectives add minedOres minecraft.mined:minecraft.diamond_ore
tellraw @a {"text":"Anticheat Loaded!","color":"green"}
