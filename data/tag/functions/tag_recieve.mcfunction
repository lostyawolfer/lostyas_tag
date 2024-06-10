## Do stuff
tag @s add tag.recieve
scoreboard players set @s tag.recieve.admin 1
#  Reciever
execute if entity @s[tag=invincible.one_time] run tag @s add tag.recieve.mantled
execute if entity @s[tag=invincible.one_time] run particle block light_blue_stained_glass ~ ~1 ~ .3 .6 .3 0 100
execute if entity @s[tag=invincible.one_time] run particle block diamond_block ~ ~1 ~ .3 .6 .3 0 50
execute if entity @s[tag=invincible.one_time] run particle end_rod ~ ~1 ~ .3 .6 .3 .1 50
execute if entity @s[tag=invincible.one_time] run playsound entity.guardian.death_land player @a ~ ~ ~
execute if entity @s[tag=invincible.one_time] run playsound block.glass.break player @a ~ ~ ~
execute if entity @s[tag=invincible.one_time] run title @s times 0 10 40
#execute if entity @s[tag=invincible.one_time] run title @s title {"text":"Мантия сбита!","color":"red","bold":true}
execute if entity @s[tag=invincible.one_time] run scoreboard players set @s[tag=ab.active.mantle] ab.use_s 0
execute if entity @s[tag=invincible.one_time] run tag @s remove invincible.one_time

execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run particle block gold_block ~ ~1 ~ .3 .6 .3 0 50
execute unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible, tag=!afk] run title @a[team = !menu_tagger, team = !menu] subtitle [{"translate":"я хз что случилось","color":"#AA00AA"},{"translate":" короче баг наверн","color":"#FF00FF","bold":true}]
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run title @a[team = !menu_tagger, team = !menu, tag=tag.give_out] title [{"selector":"@s","color":"#FFFF00","bold":true},{"translate":"tag.title.new_tagged","color":"gold","bold":false}]
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run title @s[team = !menu_tagger, team = !menu] title [{"translate":"tag.title.you_tagged","color":"red","bold":true}]
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run title @a[tag = !menu_tagger, tag = !menu] times 0 20 3
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run damage @s 1
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run title @s times 0 30 50
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 5
#execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk, tag=!safezoned] run function run_song:play
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players add @s stat.get_tagged 1
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s playtime.title.trigger -4
#execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s playtime 0
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={playtime=..-1}] playtime 0
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run function tag:tag_lightning
execute unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run tag @s add tagger


#  Giver
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 5
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @a[team = !menu_tagger, team = !menu] subtitle [{"translate":"tag.subtitle.tag_by1","color":"#00AAAA"},{"selector":"@s","color":"#00FFFF","bold":true},{"translate":"tag.subtitle.tag_by2"}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @s[team = !menu_tagger, team = !menu] subtitle [{"translate":"tag.subtitle.tag_by1","color":"#00AA00"},{"translate":"tag.subtitle.you","color":"#00FF00","bold":true},{"translate":"tag.subtitle.tag_by2"}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run tellraw @a[team = !menu_tagger, team = !menu] [{"text":"🔥 ","color":"gold"},{"selector":"@s","color":"aqua","bold":false},{"translate":"tag.chat","color":"aqua"},{"text":"","color":"yellow"},{"selector":"@a[tag=tag.recieve]","color":"gold","bold":true}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @a[team = !menu_tagger, team = !menu] times 0 20 3
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run scoreboard players set @s effect.glow 20
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={tagger_timer=10..40}] playtime.title.trigger -3
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players add @s[scores={tagger_timer=10..40}] playtime 15
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={tagger_timer=..9}] playtime.title.trigger -5
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players add @s[scores={tagger_timer=..9}] playtime 40
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={tagger_timer=1..}] tagger_timer 0
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={playtime.title.reason=-2}] playtime.title.anim_cnt -20
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={playtime.title.reason=-2}] playtime.title.reason -2
execute as @a[tag=tag.give_out] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible, tag=!afk] run playsound minecraft:entity.experience_orb.pickup player @s[scores={tagger_timer=..100}] ~ ~ ~ 1 1.5
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run tag @s remove tagger


## Clear detection
tag @s remove tag.recieve
execute as @a[tag=tag.recieve.mantled] at @s run tag @s remove tag.recieve.mantled
scoreboard players reset @s tag.recieve
execute as @a[tag=tag.give_out] at @s run scoreboard players reset @s tag.give_out
execute as @a[tag=tag.give_out] at @s run tag @s remove tag.give_out