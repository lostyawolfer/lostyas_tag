playsound ui.loom.take_result master @s ~ ~ ~ .3
scoreboard players set @s ab.current_ability 2
tellraw @a [{"text": "⚠ ", "color": "light_purple"}, {"selector": "@s"}, " ", {"translate": "chat.ability.select", "color":"dark_purple"}, " ", {"translate": "menu.abilities.2", "bold": true}]