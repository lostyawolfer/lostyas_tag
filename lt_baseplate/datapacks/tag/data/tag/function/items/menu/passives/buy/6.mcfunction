execute unless score @s stat.xp matches 15.. run playsound entity.villager.no master @s ~ ~ ~ .3
execute unless score @s stat.xp matches 15.. run tellraw @s [{"translate": "menu.buy.insufficient_funds", "color":"red", "bold": true}, "\n", {"translate": "menu.buy.insufficient_funds.desc", "bold": false}]
execute unless score @s stat.xp matches 15.. run return 0


playsound entity.villager.celebrate master @s ~ ~ ~ .3
scoreboard players set @s xp.recieve -15
scoreboard players set @s pa.unlocked_6 1

function tag:items/menu/passives/select/6