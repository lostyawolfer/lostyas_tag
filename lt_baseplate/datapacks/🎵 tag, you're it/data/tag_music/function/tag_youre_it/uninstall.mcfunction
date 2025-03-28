tag @e remove nbs_tagyoureit
scoreboard objectives remove nbs_tagyoureit
scoreboard objectives remove nbs_tagyoureit_t
datapack disable "file/tag_youre_it.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true},{"text":"Data pack ","color":"yellow"},{"text":"tag_youre_it.zip","color":"gold","underlined":true},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]