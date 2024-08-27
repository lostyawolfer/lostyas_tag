scoreboard players set @s menu.selecting 0
tellraw @s {"translate":"menu.item.not_enough_money","color":"red","bold": true}
tellraw @s {"translate":"menu.item.not_enough_money.description","color":"red","italic": true}
playsound entity.villager.no master @s