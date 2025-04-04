execute unless score game server matches 1.. run tag @s add no_points
execute unless entity @a[tag = tagger, tag =!dead, tag =!safezone] run tag @s add no_points
execute if score @s effect.downed matches 1.. run tag @s add no_points
execute if entity @s[gamemode=!adventure, tag=!normal_player_decoration, tag=!safezone] run tag @s add no_points

execute if score game server matches 1.. if entity @a[tag = tagger, tag =!dead, tag =!safezone] unless score @s effect.downed matches 1.. unless entity @s[gamemode=!adventure, tag=!normal_player_decoration, tag=!safezone] run tag @s remove no_points


execute unless score @s points.reason.store matches -2147483648..2147483647 unless entity @s[tag=no_points] run title @s actionbar [{"text":"⌚ ","color":"#50FF50"}, {"score":{"name":"@s","objective":"points"},"color":"#50FF50"}, {"text":"     ⚡ ","color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_1"},"color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_2"},"color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_3"},"color":"#3573EF"}, "                                                     ", {"text":"🔥 ","color":"#FFAA00"}, {"score":{"name":"@s","objective":"stat.get_tagged"},"color":"#FFAA00"}, "     ", {"text":"⭐ ","color":"yellow"}, {"score":{"name":"@s","objective":"points.best"},"color":"yellow"}]
execute if score @s points.reason.store matches 0 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_xp
execute if score @s points.reason.store matches 1 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+1⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 2 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+2⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 3 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+3⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 4 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+2⌚", translate: "ᴅᴀꜱʜ", spacing: "                    "}
execute if score @s points.reason.store matches 5 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+1⌚", translate: "ᴄʟᴏꜱᴇ ᴛᴏ ᴀ ᴛᴀɢɢᴇʀ", spacing: "           "}
execute if score @s points.reason.store matches 6 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro {amount: "+5⌚", translate: "ᴅɪꜱʀᴇꜱᴘᴇᴄᴛ", spacing: "                "}
execute if score @s points.reason.store matches -1 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+10⌚", translate: "ᴇꜱᴄᴀᴘᴇ", spacing: "                 "}
execute if score @s points.reason.store matches -2 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+1000⌚", translate: "ᴡᴏɴ ᴀꜱ ʀᴜɴɴᴇʀ", spacing: "            "}
execute if score @s points.reason.store matches -3 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+500⌚", translate: "ᴡᴏɴ ᴀꜱ ᴛᴀɢɢᴇʀ", spacing: "             "}
execute if score @s points.reason.store matches -4 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+120⌚", translate: "ᴡᴀᴠᴇ ꜱᴜʀᴠɪᴠᴇᴅ", spacing: "            "}
execute if score @s points.reason.store matches -7 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+40⌚", translate: "ᴛᴀɢɢᴇᴅ", spacing: "                  "}
execute if score @s points.reason.store matches -8 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+40⌚", translate: "ᴛᴀɢɢᴇᴅ", spacing: "                  "}
execute if score @s points.reason.store matches -9 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+60⌚", translate: "ꜰʀᴏᴢᴇ", spacing: "                   "}
execute if score @s points.reason.store matches -10 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+200⌚", translate: "ꜰʀᴏᴢᴇɴ ᴛᴏ ᴅᴇᴀᴛʜ", spacing: "           "}
execute if score @s points.reason.store matches -11 unless entity @s[tag=no_points] run function tag:points_xp/animations/points_can_gain/gaining_animations_macro_blue {amount: "+60⌚", translate: "ᴜɴꜰʀᴏᴢᴇ", spacing: "                  "}



execute unless score @s points.reason.store matches -2147483648..2147483647 if entity @s[tag=no_points] run title @s actionbar [{"text":"⌚ ","color":"#A7A7A7"}, {"score":{"name":"@s","objective":"points"},"color":"#A7A7A7"}, {"text":"     ⚡ ","color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_1"},"color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_2"},"color":"#3573EF"}, {"score":{"name":"@s","objective":"stat.speed.digit_3"},"color":"#3573EF"}, "                                                     ", {"text":"🔥 ","color":"#FFAA00"}, {"score":{"name":"@s","objective":"stat.get_tagged"},"color":"#FFAA00"}, "     ", {"text":"⭐ ","color":"yellow"}, {"score":{"name":"@s","objective":"points.best"},"color":"yellow"}]
execute if score @s points.reason.store matches 0 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_xp
execute if score @s points.reason.store matches 1 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+1⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 2 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+2⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 3 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+3⌚", translate: "ʙʜᴏᴘ", spacing: "                    "}
execute if score @s points.reason.store matches 4 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+2⌚", translate: "ᴅᴀꜱʜ", spacing: "                    "}
execute if score @s points.reason.store matches 5 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+1⌚", translate: "ᴄʟᴏꜱᴇ ᴛᴏ ᴀ ᴛᴀɢɢᴇʀ", spacing: "           "}
execute if score @s points.reason.store matches 6 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro {amount: "+5⌚", translate: "ᴅɪꜱʀᴇꜱᴘᴇᴄᴛ", spacing: "                "}
execute if score @s points.reason.store matches -1 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+10⌚", translate: "ᴇꜱᴄᴀᴘᴇ", spacing: "                 "}
execute if score @s points.reason.store matches -2 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+1000⌚", translate: "ᴡᴏɴ ᴀꜱ ʀᴜɴɴᴇʀ", spacing: "            "}
execute if score @s points.reason.store matches -3 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+500⌚", translate: "ᴡᴏɴ ᴀꜱ ᴛᴀɢɢᴇʀ", spacing: "             "}
execute if score @s points.reason.store matches -4 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+120⌚", translate: "ᴡᴀᴠᴇ ꜱᴜʀᴠɪᴠᴇᴅ", spacing: "            "}
execute if score @s points.reason.store matches -7 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+40⌚", translate: "ᴛᴀɢɢᴇᴅ", spacing: "                  "}
execute if score @s points.reason.store matches -8 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+40⌚", translate: "ᴛᴀɢɢᴇᴅ", spacing: "                  "}
execute if score @s points.reason.store matches -9 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+60⌚", translate: "ꜰʀᴏᴢᴇ", spacing: "                   "}
execute if score @s points.reason.store matches -10 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+200⌚", translate: "ꜰʀᴏᴢᴇɴ ᴛᴏ ᴅᴇᴀᴛʜ", spacing: "           "}
execute if score @s points.reason.store matches -11 if entity @s[tag=no_points] run function tag:points_xp/animations/points_cant_gain/gaining_animations_macro_blue {amount: "+60⌚", translate: "ᴜɴꜰʀᴏᴢᴇ", spacing: "                  "}




execute if score @s points.reason.anim matches 1.. run scoreboard players add @s points.reason.anim 1
execute if score @s points.reason.anim matches 70.. run scoreboard players reset @s points.reason.store
execute if score @s points.reason.anim matches 70.. run scoreboard players reset @s points.reason.anim