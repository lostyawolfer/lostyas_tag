scoreboard objectives remove playtime.display
scoreboard objectives add playtime.display dummy
scoreboard objectives modify playtime.display displayname {"text":"","color":"green"}
scoreboard objectives modify playtime displayname {"text":"⌚","color":"green"}
scoreboard objectives setdisplay sidebar playtime.display
scoreboard objectives setdisplay list playtime.display
scoreboard objectives setdisplay belowName playtime