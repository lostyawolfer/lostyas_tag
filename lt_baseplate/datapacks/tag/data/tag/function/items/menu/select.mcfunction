scoreboard players reset @s menu.selecting

playsound ui.loom.take_result master @s ~ ~ ~ .3
$scoreboard players set @s $(product).current $(id)

$execute if score $product_type $(product).current matches 1..2 run playsound minecraft:block.beacon.power_select player @a
$execute if score $product_type $(product).current matches 1 run tellraw @a [{"text": "⚠ ", "color": "light_purple"}, {"selector": "@s"}, " ", {"translate": "chat.ab.select", "color":"dark_purple"}, " ", {"translate": "menu.ab.$(id)", "bold": true}]
$execute if score $product_type $(product).current matches 2 run tellraw @a [{"text": "⚠ ", "color": "yellow"}, {"selector": "@s"}, " ", {"translate": "chat.pa.select", "color":"gold"}, " ", {"translate": "menu.pa.$(id)", "bold": true}]