scoreboard players reset @s menu.selecting

playsound ui.stonecutter.take_result master @s ~ ~ ~ .3
$scoreboard players set @s $(product).current 0

$execute if score $product_type $(product).current matches 1..2 run playsound minecraft:block.beacon.deactivate player @a
$execute if score $product_type $(product).current matches 1 run tellraw @a [{"text": "⚠ ", "color": "light_purple"}, {"selector": "@s"}, " ", {"translate": "chat.ab.deselect", "color":"dark_purple"}]
$execute if score $product_type $(product).current matches 2 run tellraw @a [{"text": "⚠ ", "color": "yellow"}, {"selector": "@s"}, " ", {"translate": "chat.pa.deselect", "color":"gold"}]