execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, tag=!safezone] run item replace entity @s container.0 with stick[custom_model_data=0, custom_data={game: 1}, custom_name='{"translate": "menu.pa.6", "color": "#9d5100", "bold": false, "italic": false}', enchantments={levels:{knockback: 3}, show_in_tooltip: true}, enchantment_glint_override=true]
execute as @s[tag=!safezone, gamemode=adventure, tag=!tagger, tag=!safezone] run scoreboard players set @s pa.active 1

execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] run attribute @s entity_interaction_range modifier remove tag:knock_em_out
execute unless score game server matches 4 as @s[tag= safezone, gamemode=adventure] run attribute @s entity_interaction_range modifier remove tag:knock_em_out
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger, tag=!safezone] run attribute @s entity_interaction_range modifier add tag:knock_em_out 1.5 add_multiplied_total
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger, tag=!safezone] run scoreboard players set @s pa.active 1



execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] run attribute @s entity_interaction_range modifier remove tag:knock_em_out
execute if score game server matches 4 as @s[tag= safezone, gamemode=adventure] run attribute @s entity_interaction_range modifier remove tag:knock_em_out
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger, tag=!safezone] run attribute @s entity_interaction_range modifier add tag:knock_em_out 1.5 add_multiplied_total
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger, tag=!safezone] run scoreboard players set @s pa.active 1



execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^3.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^4.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^5.5 0 0 0 0 1 force @a
execute unless score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^6.5 0 0 0 0 1 force @a

execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^3.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^4.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^5.5 0 0 0 0 1 force @a
execute if score game server matches 4 as @s[tag=!safezone, gamemode=adventure, tag=!tagger] if score @s pa.ability_specific.dealt_damage matches 1.. positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^6.5 0 0 0 0 1 force @a

execute if score @s pa.ability_specific.dealt_damage matches 1.. run scoreboard players set @s pa.ability_specific.dealt_damage 0