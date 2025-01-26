tag @e remove nbs_safezone
scoreboard objectives remove nbs_safezone
scoreboard objectives remove nbs_safezone_t
datapack disable "file/safezone.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true},{"text":"Data pack ","color":"yellow"},{"text":"safezone.zip","color":"gold","underlined":true},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]