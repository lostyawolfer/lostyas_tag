damage @s 1 sweet_berry_bush by @s
scoreboard players add @s inside_blocks 1


execute as @a[scores={inside_blocks=180..}] at @s run function tag:bg_processes/tp_back/outside_map
execute as @a[scores={inside_blocks=180..}] at @s run scoreboard players reset @s tp_outmap_anim
execute as @a[scores={inside_blocks=180}] at @s run scoreboard players set @s tp_inside_anim 21