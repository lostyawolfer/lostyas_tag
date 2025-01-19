playsound ui.loom.take_result master @s ~ ~ ~ .3
scoreboard players set @s ab.current_ability 7
playsound minecraft:block.beacon.power_select player @a
tellraw @a [{"text": "⚠ ", "color": "light_purple"}, {"selector": "@s"}, " ", {"translate": "chat.ability.select", "color":"dark_purple"}, " ", {"translate": "menu.abilities.7", "bold": true}]