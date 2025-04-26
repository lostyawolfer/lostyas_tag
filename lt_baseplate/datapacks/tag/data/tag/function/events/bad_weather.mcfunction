execute if score kill_timer server matches ..1500 run scoreboard players reset e.bad_weather server
execute if score kill_timer server matches 1.. if score e.bad_weather server matches 1.. run scoreboard players add kill_timer server 1

execute if score e.bad_weather server matches 0.. run scoreboard players add e.bad_weather server 1
execute if score e.bad_weather server matches 0.. run scoreboard players set e.bad_weather.display server 3600
execute if score e.bad_weather server matches 0.. run scoreboard players operation e.bad_weather.display server -= e.bad_weather server
execute if score e.bad_weather server matches 0.. run bossbar set tag:event color pink
execute if score e.bad_weather server matches 0.. run bossbar set tag:event max 3355
execute if score e.bad_weather server matches 0.. run bossbar set tag:event name [{"translate": "event.bad_weather.name", "color": "red"}, " ", {"translate": "event.bad_weather.desc", "color": "gray"}]
execute if score e.bad_weather server matches 0.. store result bossbar tag:event value run scoreboard players get e.bad_weather.display server

execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 1}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 2}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 3}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 4}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 5}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 6}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 7}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 8}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 9}
execute if score e.bad_weather server matches 250.. run function tag:events/bad_weather.macro {id: 10}
execute unless score e.bad_weather server matches 250.. run kill @e[type=armor_stand, tag=bad_weather]
execute unless score e.bad_weather server matches 250.. run kill @e[type=armor_stand, tag=bad_weather2]



execute if score e.bad_weather server matches 1..10 run scoreboard players set @a screen_animation 1


execute if score e.bad_weather server matches 170 as @a run function tag_music:proceed_to_the_nearest_shelter/play
execute if score e.bad_weather server matches 170.. as @a at @s run weather thunder


execute if score e.bad_weather server matches 250 as @a at @s run playsound tag:events.danger_approaching master @s ~ ~ ~ 1 1 1
execute if score e.bad_weather server matches 255.. run bossbar set tag:event visible true

execute if score e.bad_weather server matches 255 as @a at @s run title @s times 0 40 40
execute if score e.bad_weather server matches 255 as @a at @s run title @s title ""

execute if score e.bad_weather server matches 255 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 260 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 265 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 270 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 275 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 280 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 285 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 290 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 295 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 300 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 305 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 310 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 315 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 320 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 325 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 330 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 335 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}
execute if score e.bad_weather server matches 340 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#858585", "italic": true}
execute if score e.bad_weather server matches 345 as @a at @s run title @s subtitle {"translate": "event.danger_approaching", "color": "#FFFF00", "italic": true}



execute if score e.bad_weather server matches 3600.. as @a at @s run weather clear
execute if score e.bad_weather server matches 3600.. as @a run function tag_music:win/play
execute if score e.bad_weather server matches 3600.. as @a run function tag_music:proceed_to_the_nearest_shelter/stop
execute if score e.bad_weather server matches 3600.. run bossbar set tag:event visible false
execute if score e.bad_weather server matches 3600.. run scoreboard players reset e.bad_weather