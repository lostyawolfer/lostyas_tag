bossbar set minecraft:notif.no_save_position players @a[tag=no_saving_pos]
execute if score notifanim notifanim matches 1 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#FF0000"}
execute if score notifanim notifanim matches 2 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#F30606"}
execute if score notifanim notifanim matches 3 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#DD1010"}
execute if score notifanim notifanim matches 4 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#C71B1B"}
execute if score notifanim notifanim matches 5 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#B22626"}
execute if score notifanim notifanim matches 6 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#9D3131"}
execute if score notifanim notifanim matches 7 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#873B3B"}
execute if score notifanim notifanim matches 8 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#724646"}
execute if score notifanim notifanim matches 9 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#5D5151"}
execute if score notifanim notifanim matches 10 run bossbar set minecraft:notif.no_save_position name {"translate":"no_save_position.notif","color":"#555555"}




# gray out the name if in social space
execute unless score game_type consts matches -10 run team modify x.player color aqua
execute if score game_type consts matches -10 run team modify x.player color gray
execute if score game_type consts matches -10 run tag @a remove tagger


execute if score game_type consts matches -10 run team modify a.tagger color gray
execute if score game_type consts matches -1..1 run team modify a.tagger color gold
execute if score game_type consts matches 2 run team modify a.tagger color dark_green
execute if score game_type consts matches 3 run team modify a.tagger color red
execute if score game_type consts matches 4 run team modify a.tagger color gold
execute if score game_type consts matches 5 run team modify a.tagger color yellow

execute if score game_type consts matches -10 run team modify a.tagger.crouch color gray
execute if score game_type consts matches -1..1 run team modify a.tagger.crouch color gold
execute if score game_type consts matches 2 run team modify a.tagger.crouch color dark_green
execute if score game_type consts matches 3 run team modify a.tagger.crouch color red
execute if score game_type consts matches 4 run team modify a.tagger.crouch color gold
execute if score game_type consts matches 5 run team modify a.tagger.crouch color yellow


execute if score game_type consts matches -10 run team modify a.tagger.yellow color gray
execute if score game_type consts matches -1..1 run team modify a.tagger.yellow color yellow
execute if score game_type consts matches 2 run team modify a.tagger.yellow color green
execute if score game_type consts matches 3 run team modify a.tagger.yellow color gold
execute if score game_type consts matches 4 run team modify a.tagger.yellow color yellow
execute if score game_type consts matches 5 run team modify a.tagger.yellow color yellow

execute if score game_type consts matches -10 run team modify a.tagger.yellow.crouch color gray
execute if score game_type consts matches -1..1 run team modify a.tagger.yellow.crouch color yellow
execute if score game_type consts matches 2 run team modify a.tagger.yellow.crouch color green
execute if score game_type consts matches 3 run team modify a.tagger.yellow.crouch color gold
execute if score game_type consts matches 4 run team modify a.tagger.yellow.crouch color yellow
execute if score game_type consts matches 5 run team modify a.tagger.yellow.crouch color yellow

execute if score game_type consts matches -10 run team modify a.tagger.yellow.glow color gray
execute if score game_type consts matches -1..1 run team modify a.tagger.yellow.glow color yellow
execute if score game_type consts matches 2 run team modify a.tagger.yellow.glow color green
execute if score game_type consts matches 3 run team modify a.tagger.yellow.glow color gold
execute if score game_type consts matches 4 run team modify a.tagger.yellow.glow color yellow
execute if score game_type consts matches 5 run team modify a.tagger.yellow.glow color yellow


execute if score game_type consts matches -10 run team modify a.tagger.glow color gray
execute if score game_type consts matches -1..1 run team modify a.tagger.glow color gold
execute if score game_type consts matches 2 run team modify a.tagger.glow color dark_green
execute if score game_type consts matches 3 run team modify a.tagger.glow color red
execute if score game_type consts matches 4 run team modify a.tagger.glow color gold
execute if score game_type consts matches 5 run team modify a.tagger.glow color yellow



execute unless score game_type consts matches -10 if score notifanim notifanim matches 0 run team modify x.player.glow color aqua
execute if score game_type consts matches -10 if score notifanim notifanim matches 0 run team modify x.player.glow color gray
execute if score notifanim notifanim matches 2 run team modify x.player.glow color white
execute unless score game_type consts matches -10 if score notifanim notifanim matches 4 run team modify x.player.glow color aqua
execute if score game_type consts matches -10 if score notifanim notifanim matches 4 run team modify x.player.glow color gray
execute if score notifanim notifanim matches 6 run team modify x.player.glow color white
execute unless score game_type consts matches -10 if score notifanim notifanim matches 8 run team modify x.player.glow color aqua
execute if score game_type consts matches -10 if score notifanim notifanim matches 8 run team modify x.player.glow color gray
execute if score notifanim notifanim matches 10 run team modify x.player.glow color white
execute unless score game_type consts matches -10 if score notifanim notifanim matches 12 run team modify x.player.glow color aqua
execute if score game_type consts matches -10 if score notifanim notifanim matches 12 run team modify x.player.glow color gray
execute if score notifanim notifanim matches 14 run team modify x.player.glow color white
execute unless score game_type consts matches -10 if score notifanim notifanim matches 16 run team modify x.player.glow color aqua
execute if score game_type consts matches -10 if score notifanim notifanim matches 16 run team modify x.player.glow color gray
execute if score notifanim notifanim matches 18 run team modify x.player.glow color white




execute if score notifanim notifanim matches 0 run team modify a.tagger.crouch suffix {"text": "↓", "color": "#FFFF55"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.crouch suffix {"text": "↓", "color": "#BCBC3F"}

execute if score notifanim notifanim matches 0 run team modify a.tagger.yellow.crouch suffix {"text": "↓", "color": "#FFFF55"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.yellow suffix {"text": "↓", "color": "#BCBC3F"}

execute if score notifanim notifanim matches 0 run team modify a.tagger.white.crouch suffix {"text": "↓", "color": "#FFFF55"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.white.crouch suffix {"text": "↓", "color": "#BCBC3F"}


execute if score notifanim notifanim matches 0 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 2 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 4 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 6 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 8 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 12 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 14 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 16 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 18 run team modify a.tagger.glow suffix {"text": "⚠", "color": "#FFFFFF"}

execute if score notifanim notifanim matches 0 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 2 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 4 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 6 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 8 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 12 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 14 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 16 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 18 run team modify a.tagger.yellow.glow suffix {"text": "⚠", "color": "#FFFFFF"}

execute if score notifanim notifanim matches 0 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 2 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 4 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 6 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 8 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 10 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 12 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 14 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#FFFFFF"}
execute if score notifanim notifanim matches 16 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#CCCC22"}
execute if score notifanim notifanim matches 18 run team modify a.tagger.white.glow suffix {"text": "⚠", "color": "#FFFFFF"}






scoreboard players add notifanim notifanim 1
execute if score notifanim notifanim matches 20.. run scoreboard players set notifanim notifanim 0