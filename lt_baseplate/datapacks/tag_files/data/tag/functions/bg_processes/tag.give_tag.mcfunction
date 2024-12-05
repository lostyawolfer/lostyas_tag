## Detect
#  Reciever
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run tag @s add tag.recieve
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s unless entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run scoreboard players reset @s tag.recieve
execute as @a[scores={tag.recieve=1..},tag=tagger] at @s run scoreboard players reset @s tag.recieve
#  Giver
execute as @a[scores={tag.recieve=1..},tag=!tagger] at @s if entity @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1] run tag @a[tag=tagger,scores={tag.give_out=1..},distance=..10,limit=1,sort=random] add tag.give_out
execute as @a[scores={tag.give_out=1..},tag=!tagger] at @s unless entity @a[tag=!tagger,scores={tag.recieve=1..},distance=..10,limit=1] run scoreboard players reset @s tag.give_out



## Do stuff
#  Reciever
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run tag @s add tag.recieve.mantled
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run particle block light_blue_stained_glass ~ ~1 ~ .3 .6 .3 0 100
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run particle block diamond_block ~ ~1 ~ .3 .6 .3 0 50
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run particle end_rod ~ ~1 ~ .3 .6 .3 .1 50
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run playsound entity.guardian.death_land player @a ~ ~ ~
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run playsound block.glass.break player @a ~ ~ ~
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run title @s times 0 10 40
#execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run title @s title {"text":"Мантия сбита!","color":"red","bold":true}
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run scoreboard players set @s[tag=ab.active.mantle] ab.use_s 0
execute as @a[tag=tag.recieve] at @s if entity @s[tag=invincible.one_time] run tag @s remove invincible.one_time
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run particle block gold_block ~ ~1 ~ .3 .6 .3 0 50
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run title @a[team = !menu_tagger, team = !menu] title [{"selector":"@s","color":"#FFFF00","bold":true},{"translate":"tag.title.new_tagged","color":"gold","bold":false}]
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run title @s[team = !menu_tagger, team = !menu] title [{"translate":"tag.title.you_tagged","color":"red","bold":true}]
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run damage @s 1
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run title @a[tag = !menu_tagger, tag = !menu] times 0 20 3
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run title @s times 0 30 50
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 5
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run scoreboard players add @s stat.get_tagged 1
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run scoreboard players set @s playtime 0
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run scoreboard players set @s playtime.title.trigger 1
execute as @a[tag=tag.recieve] at @s unless entity @s[tag=tag.recieve.mantled] unless entity @s[tag=invincible] run tag @s add tagger
#  Giver
#execute as @a[tag=tag.give_out] at @s if entity @a[tag=tag.recieve.mantled] run title @s title [{"text":"Мантия сбита!","color":"#00AAAA"},{"selector":"@s","color":"#00FFFF","bold":true},{"text":" так сказал"}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 5
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @a[team = !menu_tagger, team = !menu] subtitle [{"translate":"tag.subtitle.tag_by1","color":"#00AAAA"},{"selector":"@s","color":"#00FFFF","bold":true},{"translate":"tag.subtitle.tag_by2"}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @s[team = !menu_tagger, team = !menu] subtitle [{"translate":"tag.subtitle.tag_by1","color":"#00AA00"},{"translate":"tag.subtitle.you","color":"#00FF00","bold":true},{"translate":"tag.subtitle.tag_by2"}]
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run title @a[team = !menu_tagger, team = !menu] times 0 20 3
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run scoreboard players set @s effect.glow 20
#execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run tag @s add invincible.one_time
#execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run scoreboard players set @s aftertagger_invincibility 20
execute as @a[tag=tag.give_out] at @s unless entity @a[tag=tag.recieve.mantled] unless entity @a[tag=invincible] run tag @s remove tagger


execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=1..}] run scoreboard players remove @s aftertagger_invincibility 1
execute as @a[tag=!invincible.one_time,scores={aftertagger_invincibility=1..}] run scoreboard players reset @s aftertagger_invincibility
execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=0}] run tag @s remove invincible.one_time
execute as @a[scores={aftertagger_invincibility=0}] run scoreboard players reset @s aftertagger_invincibility


## Clear detection
execute as @a[tag=tag.recieve.mantled] at @s run tag @s remove tag.recieve.mantled
execute as @a[tag=tag.recieve] at @s run scoreboard players reset @s tag.recieve
execute as @a[tag=tag.recieve] at @s run tag @s remove tag.recieve
execute as @a[tag=tag.give_out] at @s run scoreboard players reset @s tag.give_out
execute as @a[tag=tag.give_out] at @s run tag @s remove tag.give_out