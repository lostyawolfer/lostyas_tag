scoreboard players set @s ab.id 1
scoreboard players set @s menu.selecting 0
function tag:items/menu/ability/announce
scoreboard players set @s xp.recieve -5
playsound ui.loom.take_result master @s