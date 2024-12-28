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
scoreboard objectives modify player_list displayname [{"text": "now online", "color": "#c4ff20", "bold": true, "underlined": true}]
scoreboard objectives modify player_list numberformat blank
# TODO: when i will add points to the game,
# make the numberformat show numbers in green
# scoreboard objectives modify player_list numberformat {"color": "green"}
scoreboard players add @a player_list 0

tellraw @a[scores = {logging = 1}] ["! log: ", "updated player list sidebar"]
