## Do stuff
#  Reciever
execute if entity @s[tag=invincible.one_time] run tag @s remove invincible.one_time
execute unless entity @s[tag=invincible, tag=!afk] run particle block gold_block ~ ~1 ~ .3 .6 .3 0 50
execute unless entity @a[tag=invincible, tag=!afk] run title @a[team = !menu_tagger, team = !menu] subtitle [{"translate":"tag.subtitle.tag_by.admin1","color":"#AA00AA"},{"translate":"tag.subtitle.tag_by.admin2","color":"#FF00FF","bold":true}]
execute unless entity @s[tag=invincible, tag=!afk] run title @a[team = !menu_tagger, team = !menu] title [{"selector":"@s","color":"#FFFF00","bold":true},{"translate":"tag.title.new_tagged","color":"gold","bold":false}]
execute unless entity @s[tag=invincible, tag=!afk] run title @s[team = !menu_tagger, team = !menu] title [{"translate":"tag.title.you_tagged","color":"red","bold":true}]
execute unless entity @s[tag=invincible, tag=!afk] run damage @s 1
execute unless entity @s[tag=invincible, tag=!afk] run title @a[tag = !menu_tagger, tag = !menu] times 0 20 3
execute unless entity @s[tag=invincible, tag=!afk] run title @s times 0 30 50
execute unless entity @s[tag=invincible, tag=!afk] run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 5
#execute unless entity @s[tag=invincible, tag=!afk, tag=!safezoned] run function run_song:play
#execute unless entity @s[tag=invincible, tag=!afk] run scoreboard players add @s stat.get_tagged 1
#execute unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s playtime.title.trigger -4
#execute unless entity @s[tag=invincible, tag=!afk] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute unless entity @s[tag=invincible, tag=!afk] run scoreboard players set @s[scores={playtime=..-1}] playtime 0
execute unless entity @s[tag=invincible, tag=!afk] run function tag:tag_lightning
execute unless entity @s[tag=invincible, tag=!afk] run tellraw @a[team = !menu_tagger, team = !menu] [{"text":"🔥 ","color":"light_purple"},{"selector":"@s","color":"aqua","bold":false},{"translate":"tag.chat.admin","color":"aqua"}]
execute unless entity @s[tag=invincible, tag=!afk] run title @a[team = !menu_tagger, team = !menu] times 0 20 3
execute unless entity @s[tag=invincible, tag=!afk] run tag @s add tagger




execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=1..}] run scoreboard players remove @s aftertagger_invincibility 1
execute as @a[tag=!invincible.one_time,scores={aftertagger_invincibility=1..}] run scoreboard players reset @s aftertagger_invincibility
execute as @a[tag=invincible.one_time,scores={aftertagger_invincibility=0}] run tag @s remove invincible.one_time
execute as @a[scores={aftertagger_invincibility=0}] run scoreboard players reset @s aftertagger_invincibility


## Clear detection
scoreboard players reset @s tag.recieve