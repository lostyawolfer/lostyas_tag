scoreboard players reset @s menu.selecting

$execute unless score @s stat.xp matches $(price).. run playsound entity.villager.no master @s ~ ~ ~ .3
$execute unless score @s stat.xp matches $(price).. run tellraw @s [{"translate": "menu.buy.insufficient_funds", "color":"red", "bold": true}, "\n", {"translate": "menu.buy.insufficient_funds.desc", "bold": false}]
$execute unless score @s stat.xp matches $(price).. run return 0


playsound entity.villager.celebrate master @s ~ ~ ~ .3
$scoreboard players set @s xp.recieve -$(price)
$scoreboard players set @s $(product).unlocked_$(id) 1

$function tag:items/menu/select {id: $(id), product: $(product)}