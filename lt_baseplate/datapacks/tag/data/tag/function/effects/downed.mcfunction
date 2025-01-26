#tellraw @a[scores = {logging = 0}] ["! debug: ", {"selector": "@s"}, " called downed funciton"]

scoreboard players operation @s effect.downed.seconds = @s effect.downed
scoreboard players operation @s effect.downed.seconds /= 20 consts
#scoreboard players operation @s effect.downed.seconds += 1 consts

scoreboard players operation @s effect.downed.ms = @s effect.downed
scoreboard players operation @s effect.downed.ms %= 20 consts
scoreboard players operation @s effect.downed.ms /= 2 consts

scoreboard players operation @s effect.downed.seconds.10 = @s effect.downed.seconds
scoreboard players operation @s effect.downed.seconds.10 %= 10 consts


scoreboard players add @s[scores={effect.downed=1..}] effect.downed.count_up 1
scoreboard players reset @s[scores={effect.downed=..0}] effect.downed.count_up


execute if score @s effect.downed.count_up matches 1 run scoreboard players operation @s effect.downed.title_random = random server

execute if score @s effect.downed.count_up matches 1 run damage @s .01 freeze

execute if score @s effect.downed.count_up matches 1 run title @s times 0 30 10
execute if score @s effect.downed.count_up matches 1 run title @s title [{"translate": "title.hit.freeze_you", "color":"red", "bold": true}]

execute if score @s effect.downed.count_up matches 41 run title @s times 10 300 20
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 0 run title @s title [{"translate": "title.frozen0", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 1 run title @s title [{"translate": "title.frozen1", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 2 run title @s title [{"translate": "title.frozen2", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 3 run title @s title [{"translate": "title.frozen3", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 4 run title @s title [{"translate": "title.frozen4", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 5 run title @s title [{"translate": "title.frozen5", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 6 run title @s title [{"translate": "title.frozen6", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 7 run title @s title [{"translate": "title.frozen7", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 8 run title @s title [{"translate": "title.frozen8", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 41 if score @s effect.downed.title_random matches 9 run title @s title [{"translate": "title.frozen9", "color":"#80E5EF"}]

execute if score @s effect.downed.count_up matches 41..44 run title @s subtitle [{"text":"", "color":"red"}]


execute unless score game server matches 6 if score @s effect.downed.count_up matches 48 run title @s subtitle [{"text":"☠", "color":"red"}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 49 run title @s subtitle [{"text":"☠ ", "color":"red"}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 50 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text": "", "color":"blue"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 50 if score @s effect.downed.seconds matches 30.. run title @s subtitle [{"text": "", "color":"blue"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds.10"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text": "", "color":"blue"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, "."]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 30.. run title @s subtitle [{"text": "", "color":"blue"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]

execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 29 run title @s subtitle [{"text": "", "color":"#5554FA"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 28 run title @s subtitle [{"text": "", "color":"#5B54F4"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 27 run title @s subtitle [{"text": "", "color":"#6054EF"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 26 run title @s subtitle [{"text": "", "color":"#6654E9"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 25 run title @s subtitle [{"text": "", "color":"#6C54E3"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 24 run title @s subtitle [{"text": "", "color":"#7254DD"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 23 run title @s subtitle [{"text": "", "color":"#7754D8"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 22 run title @s subtitle [{"text": "", "color":"#7D54D2"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 21 run title @s subtitle [{"text": "", "color":"#8354CC"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 20 run title @s subtitle [{"text": "", "color":"#8954C6"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 19 run title @s subtitle [{"text": "", "color":"#8E54C1"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 18 run title @s subtitle [{"text": "", "color":"#9454BB"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 17 run title @s subtitle [{"text": "", "color":"#9A54B5"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 16 run title @s subtitle [{"text": "", "color":"#A054AF"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 15 run title @s subtitle [{"text": "", "color":"#A554AA"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 14 run title @s subtitle [{"text": "", "color":"#AB54A4"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 13 run title @s subtitle [{"text": "", "color":"#B1549E"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 12 run title @s subtitle [{"text": "", "color":"#B75498"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 11 run title @s subtitle [{"text": "", "color":"#BC5493"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 10 run title @s subtitle [{"text": "", "color":"#C2548D"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 09 run title @s subtitle [{"text": "", "color":"#C85487"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 08 run title @s subtitle [{"text": "", "color":"#CE5481"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 07 run title @s subtitle [{"text": "", "color":"#D3547C"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 06 run title @s subtitle [{"text": "", "color":"#D95476"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 05 run title @s subtitle [{"text": "", "color":"#DF5470"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 04 run title @s subtitle [{"text": "", "color":"#E5546A"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 03 run title @s subtitle [{"text": "", "color":"#EA5465"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 02 run title @s subtitle [{"text": "", "color":"#F0545F"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 01 run title @s subtitle [{"text": "", "color":"#F65459"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute unless score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 00 run title @s subtitle [{"text": "", "color":"#FC5454"}, {"text":"☠ ", "color":"red"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]






execute if score game server matches 6 if score @s effect.downed.count_up matches 48 run title @s subtitle [{"text":"🔥", "color":"dark_green"}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 49 run title @s subtitle [{"text":"🔥 ", "color":"dark_green"}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 50 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text": "", "color":"dark_purple"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 50 if score @s effect.downed.seconds matches 15.. run title @s subtitle [{"text": "", "color":"dark_purple"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds.10"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51 if score @s effect.downed.seconds matches ..9 run title @s subtitle [{"text": "", "color":"dark_purple"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, "."]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 15.. run title @s subtitle [{"text": "", "color":"dark_purple"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]

execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 29 run title @s subtitle [{"text": "", "color":"#A403A4"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 28 run title @s subtitle [{"text": "", "color":"#9E099E"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 27 run title @s subtitle [{"text": "", "color":"#980F98"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 26 run title @s subtitle [{"text": "", "color":"#921592"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 25 run title @s subtitle [{"text": "", "color":"#8C1B8C"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 24 run title @s subtitle [{"text": "", "color":"#872087"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 23 run title @s subtitle [{"text": "", "color":"#812681"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 22 run title @s subtitle [{"text": "", "color":"#7B2C7B"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 21 run title @s subtitle [{"text": "", "color":"#763176"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 51.. if score @s effect.downed.seconds matches 20 run title @s subtitle [{"text": "", "color":"#703770"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 19 run title @s subtitle [{"text": "", "color":"#6B3C6B"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 18 run title @s subtitle [{"text": "", "color":"#654265"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 17 run title @s subtitle [{"text": "", "color":"#604760"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 16 run title @s subtitle [{"text": "", "color":"#5A4D5A"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 15 run title @s subtitle [{"text": "", "color":"#545354"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 14 run title @s subtitle [{"text": "", "color":"#4F584F"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 13 run title @s subtitle [{"text": "", "color":"#495E49"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 12 run title @s subtitle [{"text": "", "color":"#436443"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 11 run title @s subtitle [{"text": "", "color":"#3D6A3D"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 10 run title @s subtitle [{"text": "", "color":"#387038"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 09 run title @s subtitle [{"text": "", "color":"#327532"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 08 run title @s subtitle [{"text": "", "color":"#2C7B2C"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 07 run title @s subtitle [{"text": "", "color":"#278027"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 06 run title @s subtitle [{"text": "", "color":"#218621"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 05 run title @s subtitle [{"text": "", "color":"#1B8C1B"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 04 run title @s subtitle [{"text": "", "color":"#169116"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 03 run title @s subtitle [{"text": "", "color":"#109710"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 02 run title @s subtitle [{"text": "", "color":"#0B9C0B"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 01 run title @s subtitle [{"text": "", "color":"#05A205"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]
execute if score game server matches 6 if score @s effect.downed.count_up matches 52.. if score @s effect.downed.seconds matches 00 run title @s subtitle [{"text": "", "color":"#00A800"}, {"text":"🔥 ", "color":"dark_green"}, {"score":{"name":"@s","objective":"effect.downed.seconds"}}, ".", {"score":{"name":"@s","objective":"effect.downed.ms"}}]




execute if score @s effect.downed.count_up matches 50.. run title @s times 0 100 0
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 0 run title @s title [{"translate": "title.frozen0", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 1 run title @s title [{"translate": "title.frozen1", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 2 run title @s title [{"translate": "title.frozen2", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 3 run title @s title [{"translate": "title.frozen3", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 4 run title @s title [{"translate": "title.frozen4", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 5 run title @s title [{"translate": "title.frozen5", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 6 run title @s title [{"translate": "title.frozen6", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 7 run title @s title [{"translate": "title.frozen7", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 8 run title @s title [{"translate": "title.frozen8", "color":"#80E5EF"}]
execute if score @s effect.downed.count_up matches 50.. if score @s effect.downed.title_random matches 9 run title @s title [{"translate": "title.frozen9", "color":"#80E5EF"}]



execute if score @s effect.downed matches 1.. run scoreboard players set @s jump 0
execute if score @s effect.downed matches 1.. run scoreboard players set @s jump.bhop 0
execute if score @s effect.downed matches 1.. run scoreboard players set @s jump.bhop2 0
execute if score @s effect.downed matches 1.. run scoreboard players set @s jump.timer 0
execute if score @s effect.downed matches 1.. run scoreboard players set @s effect.invisibility 0
execute if score @s effect.downed matches 1.. run scoreboard players set @s[scores={effect.strong_levitation=1..}] effect.strong_levitation 0
execute if score @s effect.downed matches 1.. run particle electric_spark ~ ~1 ~ .2 .55 .2 0 1
execute if score @s effect.downed matches 1.. run attribute @s movement_speed base set 0
execute if score @s effect.downed matches 1.. run attribute @s jump_strength base set 0
execute if score @s effect.downed matches 1.. run attribute @s attack_damage base set 0
execute if score @s effect.downed matches 1.. run attribute @s knockback_resistance base set 120

execute if score @s effect.downed.count_up matches 1 run tellraw @a[scores={logging=1}] ["! log: ", {"selector": "@s"}, " is downed"]
execute if score @s effect.downed.count_up matches 1 run playsound tag:downed master @s ~ ~ ~ 1 1
execute if score @s effect.downed.count_up matches 1 if score @s safezone_state matches -1 run tag @s add safezone_state_-1
execute if score @s effect.downed.count_up matches 1.. run scoreboard players set @s safezone_state -1

execute unless score game server matches 6 if score @s effect.downed.count_up matches 1 run scoreboard players set @s screen_effect 500
execute unless score game server matches 6 if score @s effect.downed.count_up matches 2 run scoreboard players set @s screen_effect 501
execute unless score game server matches 6 if score @s effect.downed.count_up matches 3 run scoreboard players set @s screen_effect 502
execute unless score game server matches 6 if score @s effect.downed.count_up matches 4 run scoreboard players set @s screen_effect 503
execute unless score game server matches 6 if score @s effect.downed.count_up matches 5 run scoreboard players set @s screen_effect 504
execute unless score game server matches 6 if score @s effect.downed.count_up matches 6 run scoreboard players set @s screen_effect 505
execute unless score game server matches 6 if score @s effect.downed.count_up matches 7 run scoreboard players set @s screen_effect 506
execute unless score game server matches 6 if score @s effect.downed.count_up matches 8 run scoreboard players set @s screen_effect 507
execute unless score game server matches 6 if score @s effect.downed.count_up matches 9 run scoreboard players set @s screen_effect 508
execute unless score game server matches 6 if score @s effect.downed.count_up matches 10 run scoreboard players set @s screen_effect 509
execute unless score game server matches 6 if score @s effect.downed.count_up matches 11 run scoreboard players set @s screen_effect 510
execute unless score game server matches 6 if score @s effect.downed.count_up matches 12 run scoreboard players set @s screen_effect 511
execute unless score game server matches 6 if score @s effect.downed.count_up matches 13 run scoreboard players set @s screen_effect 512
execute unless score game server matches 6 if score @s effect.downed.count_up matches 14 run scoreboard players set @s screen_effect 513
execute unless score game server matches 6 if score @s effect.downed.count_up matches 15 run scoreboard players set @s screen_effect 514
execute unless score game server matches 6 if score @s effect.downed.count_up matches 16 run scoreboard players set @s screen_effect 514
execute unless score game server matches 6 if score @s effect.downed.count_up matches 17.. run scoreboard players set @s screen_effect 515

execute if score game server matches 6 if score @s effect.downed.count_up matches 1 run scoreboard players set @s screen_effect 537
execute if score game server matches 6 if score @s effect.downed.count_up matches 2 run scoreboard players set @s screen_effect 538
execute if score game server matches 6 if score @s effect.downed.count_up matches 3 run scoreboard players set @s screen_effect 539
execute if score game server matches 6 if score @s effect.downed.count_up matches 4 run scoreboard players set @s screen_effect 540
execute if score game server matches 6 if score @s effect.downed.count_up matches 5 run scoreboard players set @s screen_effect 541
execute if score game server matches 6 if score @s effect.downed.count_up matches 6 run scoreboard players set @s screen_effect 542
execute if score game server matches 6 if score @s effect.downed.count_up matches 7 run scoreboard players set @s screen_effect 543
execute if score game server matches 6 if score @s effect.downed.count_up matches 8 run scoreboard players set @s screen_effect 544
execute if score game server matches 6 if score @s effect.downed.count_up matches 9 run scoreboard players set @s screen_effect 545
execute if score game server matches 6 if score @s effect.downed.count_up matches 10 run scoreboard players set @s screen_effect 546
execute if score game server matches 6 if score @s effect.downed.count_up matches 11 run scoreboard players set @s screen_effect 547
execute if score game server matches 6 if score @s effect.downed.count_up matches 12 run scoreboard players set @s screen_effect 548
execute if score game server matches 6 if score @s effect.downed.count_up matches 13 run scoreboard players set @s screen_effect 549
execute if score game server matches 6 if score @s effect.downed.count_up matches 14 run scoreboard players set @s screen_effect 550
execute if score game server matches 6 if score @s effect.downed.count_up matches 15 run scoreboard players set @s screen_effect 551
execute if score game server matches 6 if score @s effect.downed.count_up matches 16 run scoreboard players set @s screen_effect 551
execute if score game server matches 6 if score @s effect.downed.count_up matches 17.. run scoreboard players set @s screen_effect 552



execute if score @s effect.downed.count_up matches 1..10 run attribute @s gravity base set .005
execute if score @s effect.downed.count_up matches 11..20 run attribute @s gravity base set .01
execute if score @s effect.downed.count_up matches 21..30 run attribute @s gravity base set .015
execute if score @s effect.downed.count_up matches 31..40 run attribute @s gravity base set .02
execute if score @s effect.downed.count_up matches 41..50 run attribute @s gravity base set .025
execute if score @s effect.downed.count_up matches 51..60 run attribute @s gravity base set .03
execute if score @s effect.downed.count_up matches 61..70 run attribute @s gravity base set .035
execute if score @s effect.downed.count_up matches 71..80 run attribute @s gravity base set .04
execute if score @s effect.downed.count_up matches 81..90 run attribute @s gravity base set .045
execute if score @s effect.downed.count_up matches 91..100 run attribute @s gravity base set .05
execute if score @s effect.downed.count_up matches 101..111 run attribute @s gravity base set .055
execute if score @s effect.downed.count_up matches 111..121 run attribute @s gravity base set .06
execute if score @s effect.downed.count_up matches 121..131 run attribute @s gravity base set .065
execute if score @s effect.downed.count_up matches 131..141 run attribute @s gravity base set .07
execute if score @s effect.downed.count_up matches 141..151 run attribute @s gravity base set .075
execute if score @s effect.downed.count_up matches 151..161 run attribute @s gravity base set .08

#tp @s[nbt={OnGround:1b}] @s


execute if score @s effect.downed matches 0 run title @s times 0 20 3
execute if score @s effect.downed matches 0 unless score game server matches 6 run tag @s add dead
execute if score @s effect.downed matches 0 if score game server matches 6 run tag @s add tagger
execute if score @s effect.downed matches 0 if score game server matches 6 run function tag:tagging/tag_give/infection_freeze
execute if score @s effect.downed matches 0 run scoreboard players set @s[tag=!safezone_state_-1] safezone_state 0
execute if score @s effect.downed matches 0 run tag @s remove safezone_state_-1
execute if score @s effect.downed matches 0 run stopsound @s * tag:downed
execute if score @s effect.downed matches 0 run effect clear @s
execute if score @s effect.downed matches 0 run attribute @s gravity base set .08
execute if score @s effect.downed matches 0 run attribute @s jump_strength base set 0.42
execute if score @s effect.downed matches 0 run attribute @s movement_speed base set .15
execute if score @s effect.downed matches 0 run attribute @s attack_damage base set 1
execute if score @s effect.downed matches 0 run attribute @s knockback_resistance base set 0
execute if score @s effect.downed matches 0 unless score game server matches 6 run scoreboard players set @s anim.death 100
execute if score @s effect.downed matches 0 unless score game server matches 6 run scoreboard players set @s effect.downed -30
execute if score @s effect.downed matches 0 if score game server matches 6 run scoreboard players set @s effect.downed -20

execute if score @s effect.downed matches -1 run title @s times 0 20 3
execute if score @s effect.downed matches -1 run title @s title [{"translate": "title.hit.unfreeze_you", "color":"green", "bold": true}]
execute if score @s effect.downed matches -1 run scoreboard players set @s[tag=!safezone_state_-1] safezone_state 0
execute if score @s effect.downed matches -1 run tag @s remove safezone_state_-1
execute if score @s effect.downed matches -1 run stopsound @s * tag:downed
execute if score @s effect.downed matches -1 run effect clear @s
execute if score @s effect.downed matches -1 run attribute @s gravity base set .08
execute if score @s effect.downed matches -1 run attribute @s jump_strength base set 0.42
execute if score @s effect.downed matches -1 run attribute @s movement_speed base set .15
execute if score @s effect.downed matches -1 run attribute @s attack_damage base set 1
execute if score @s effect.downed matches -1 run attribute @s knockback_resistance base set 0
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches -1 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches -1 run scoreboard players set @s effect.downed -10

execute if score @s effect.downed matches 1.. run scoreboard players remove @s effect.downed 1
execute if score @s effect.downed matches -29..-10 run scoreboard players remove @s effect.downed 1

execute if score @s effect.downed matches -11 run scoreboard players set @s screen_effect 531
execute if score @s effect.downed matches -12 run scoreboard players set @s screen_effect 533
#execute if score @s effect.downed matches -13 run scoreboard players set @s screen_effect 533
execute if score @s effect.downed matches -13 run scoreboard players set @s effect.downed -30

execute if score @s effect.downed matches -21 run scoreboard players set @s screen_effect 534
execute if score @s effect.downed matches -22 run scoreboard players set @s screen_effect 536
#execute if score @s effect.downed matches -23 run scoreboard players set @s screen_effect 536
execute if score @s effect.downed matches -23 run scoreboard players set @s effect.downed -30

execute if score @s effect.downed matches -30 run scoreboard players reset @s effect.downed.count_up
execute if score @s effect.downed matches -30 run scoreboard players reset @s effect.downed.seconds
execute if score @s effect.downed matches -30 run scoreboard players reset @s effect.downed