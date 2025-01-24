# holy mantle
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.cd 700
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use 200
execute as @s[scores={ab.use.trigger=1..}] run playsound block.amethyst_cluster.fall player @a
execute as @s[scores={ab.use.trigger=1..}] run particle block{block_state:ice} ~ ~1 ~ .3 .6 .3 0 20
execute as @s[scores={ab.use.trigger=1..}] run tag @s add invincible_one_time
execute as @s[scores={ab.use.trigger=1..}] run scoreboard players set @s ab.use.trigger 0

execute unless score @s effect.invisibility matches 1.. if score @s ab.use matches 1.. run item replace entity @s armor.feet with diamond_boots[minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=true, minecraft:custom_data={game:7}, minecraft:custom_name='{"text":""}']
execute unless score @s effect.invisibility matches 1.. if score @s ab.use matches 1.. run item replace entity @s armor.legs with diamond_leggings[minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=true, minecraft:custom_data={game:7}, minecraft:custom_name='{"text":""}']
execute unless score @s effect.invisibility matches 1.. if score @s ab.use matches 1.. run item replace entity @s armor.chest with diamond_chestplate[minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=true, minecraft:custom_data={game:7}, minecraft:custom_name='{"text":""}']
execute if score @s effect.invisibility matches 1.. if score @s ab.use matches 1.. run clear @s *[custom_data={game:7}]
execute unless entity @s[tag=invincible_one_time] if score @s ab.use matches 1.. run scoreboard players set @s ab.use -1

execute as @s[scores={ab.use=-1}] run tag @s remove invincible_one_time
execute as @s[scores={ab.use=-1}] run clear @s *[custom_data={game:7}]
execute as @s[scores={ab.use=-1}] run playsound block.amethyst_cluster.break player @a
execute as @s[scores={ab.use=-1}] run playsound block.respawn_anchor.deplete player @a
execute as @s[scores={ab.use=-1}] run particle block{block_state:diamond_block} ~ ~1 ~ .3 .6 .3 0 20
execute as @s[scores={ab.use=-1}] run scoreboard players set @s ab.use -2