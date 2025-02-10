# this function serves as a method to easily clean all the
# offline players from the player list sidebar.
#
# used in:
# - every server restart/reload (load.mcfunction)
# - if player count decreased (tick.mcfunction)


scoreboard objectives remove player_list

scoreboard objectives add player_list dummy
scoreboard objectives setdisplay sidebar player_list
scoreboard objectives setdisplay list player_list
scoreboard objectives modify player_list displayname [{"translate": "sidebar.now_online", "color": "#c4ff20", "bold": true, "underlined": true}]
scoreboard objectives modify player_list numberformat blank
scoreboard players add @a player_list 0

tellraw @a[scores = {logging = 1}] ["! log: ", "updated player list sidebar"]
execute unless score e.glowing server matches 0.. run scoreboard players remove e.glowing server 10