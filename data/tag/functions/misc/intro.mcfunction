title @s times 0 200 200
title @s title ""
title @s subtitle "Настройки → Спец. возможности → Эффекты укачивания ВЫКЛЮЧИТЬ"
tellraw @s "Настройки → Спец. возможности → Эффекты укачивания ВЫКЛЮЧИТЬ"
tellraw @s "После этого перезайди на сервер, чтобы тебе предложило поставить серверный текстурпак"

scoreboard players set @s settings.setpos.active_ability 2
scoreboard players set @s settings.setpos.pearl 3
scoreboard players set @s settings.setpos.tag_stick 1

scoreboard players set @s ab.anim 0
scoreboard players set @s ab.cd_s 0
scoreboard players set @s ab.cd_ms 0
scoreboard players set @s ab.has 0
scoreboard players set @s ab.id 0
scoreboard players set @s ab.use 0
scoreboard players set @s ab.use_s 0
scoreboard players set @s ab.use_ms 0

scoreboard players set @s current_menu_page 0

scoreboard players set @s p_anim 0
scoreboard players set @s p_cd_ms 0
scoreboard players set @s p_cd_s 0
scoreboard players set @s p_has 0
scoreboard players set @s p_use 0

scoreboard players set @s t.anim 0
scoreboard players set @s t.cd_ms 0
scoreboard players set @s t.cd_s 0
scoreboard players set @s t.has 0
scoreboard players set @s t.use 0
scoreboard players set @s t.id 0


scoreboard players set @s d 0


tag @s add played_ALPHA