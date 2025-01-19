playsound ui.loom.take_result master @s ~ ~ ~ .3
scoreboard players set @s pa.current_passive 2
playsound minecraft:block.beacon.power_select player @a
tellraw @a [{"text": "⚠ ", "color": "yellow"}, {"selector": "@s"}, " ", {"translate": "chat.passive.select", "color":"gold"}, " ", {"translate": "menu.passives.1", "bold": true}]