scoreboard players set @s ab.p.id 6
scoreboard players set @s menu.selecting 0
function tag:items/menu/passive/announce
scoreboard players set @s xp.recieve -3
playsound ui.loom.take_result master @s
playsound block.beacon.power_select player @a ~ ~ ~ 1 1.5