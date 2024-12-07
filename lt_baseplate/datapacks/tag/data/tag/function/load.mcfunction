# temporary variable; used to store if someone wants the "unplayable build" message removed
scoreboard objectives add disable_message trigger

# scoreboards
scoreboard objectives add server dummy
scoreboard players add buildnum server 1
function tag:misc/update_player_list



# bossbars
bossbar add version ""
bossbar set version visible true
bossbar set version max 1
bossbar set version value 0



# teams
team add 0tagger
team modify 0tagger color gold
team modify 0tagger collisionRule never
team modify 0tagger friendlyFire false
team modify 0tagger nametagVisibility always
team modify 0tagger seeFriendlyInvisibles true

team add 1special
team modify 1special color blue
team modify 1special collisionRule never
team modify 1special friendlyFire false
team modify 1special nametagVisibility always
team modify 1special seeFriendlyInvisibles false

team add 2player
team modify 2player color aqua
team modify 2player collisionRule never
team modify 2player friendlyFire true
team modify 2player nametagVisibility hideForOtherTeams
team modify 2player seeFriendlyInvisibles true