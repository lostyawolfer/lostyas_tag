# temporary variable; used to store if someone wants the "unplayable build" message removed
# scoreboard objectives add disable_message trigger


# effect scoreboards
scoreboard objectives add effect.glowing dummy
scoreboard objectives add effect.strong_levitation dummy
scoreboard objectives add effect.freeze dummy
scoreboard objectives add effect.invisibility dummy
scoreboard objectives add effect.downed dummy
scoreboard objectives add effect.downed.seconds dummy
scoreboard objectives add effect.downed.seconds_even dummy


# misc scoreboards
scoreboard objectives add server dummy
scoreboard players add buildnum server 1
function tag:misc/update_player_list
scoreboard objectives add anim.death dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add screen_effect dummy

scoreboard objectives add hit_detect.giver minecraft.custom:minecraft.damage_dealt
scoreboard objectives add hit_detect.taker minecraft.custom:minecraft.damage_taken

scoreboard objectives add logging dummy



# bossbars
bossbar add version ""
bossbar set version visible true
bossbar set version max 1
bossbar set version value 0



# teams
team add 001tagger
team modify 001tagger color gold
team modify 001tagger collisionRule never
team modify 001tagger friendlyFire true
team modify 001tagger nametagVisibility always
team modify 001tagger seeFriendlyInvisibles true

team add 002special
team modify 002special color blue
team modify 002special collisionRule never
team modify 002special friendlyFire true
team modify 002special nametagVisibility always
team modify 002special seeFriendlyInvisibles false

team add 003player
team modify 003player color aqua
team modify 003player collisionRule never
team modify 003player friendlyFire true
team modify 003player nametagVisibility hideForOtherTeams
team modify 003player seeFriendlyInvisibles true



team add 101tagger_safezone
team modify 101tagger_safezone color gray
team modify 101tagger_safezone prefix {"text": "⭐", "color": "gold"}
team modify 101tagger_safezone collisionRule never
team modify 101tagger_safezone friendlyFire false
team modify 101tagger_safezone nametagVisibility always
team modify 101tagger_safezone seeFriendlyInvisibles true

team add 102special_safezone
team modify 102special_safezone color gray
team modify 102special_safezone prefix {"text": "⭐", "color": "blue"}
team modify 102special_safezone collisionRule never
team modify 102special_safezone friendlyFire false
team modify 102special_safezone nametagVisibility always
team modify 102special_safezone seeFriendlyInvisibles false

team add 103player_safezone
team modify 103player_safezone color gray
team modify 103player_safezone prefix {"text": "⭐", "color": "aqua"}
team modify 103player_safezone collisionRule never
team modify 103player_safezone friendlyFire false
team modify 103player_safezone nametagVisibility always
team modify 103player_safezone seeFriendlyInvisibles true



team add 201tagger_creative
team modify 201tagger_creative color dark_gray
team modify 201tagger_creative prefix {"text": "⭐", "color": "gold"}
team modify 201tagger_creative collisionRule never
team modify 201tagger_creative friendlyFire false
team modify 201tagger_creative nametagVisibility always
team modify 201tagger_creative seeFriendlyInvisibles true

team add 202special_creative
team modify 202special_creative color dark_gray
team modify 202special_creative prefix {"text": "⭐", "color": "blue"}
team modify 202special_creative collisionRule never
team modify 202special_creative friendlyFire false
team modify 202special_creative nametagVisibility always
team modify 202special_creative seeFriendlyInvisibles false

team add 203player_creative
team modify 203player_creative color dark_gray
team modify 203player_creative prefix {"text": "⭐", "color": "aqua"}
team modify 203player_creative collisionRule never
team modify 203player_creative friendlyFire true
team modify 203player_creative nametagVisibility always
team modify 203player_creative seeFriendlyInvisibles true



team add 301tagger_spectator
team modify 301tagger_spectator color dark_gray
team modify 301tagger_spectator prefix {"text": "☆", "color": "gold"}
team modify 301tagger_spectator collisionRule never
team modify 301tagger_spectator friendlyFire false
team modify 301tagger_spectator nametagVisibility always
team modify 301tagger_spectator seeFriendlyInvisibles true

team add 302special_spectator
team modify 302special_spectator color dark_gray
team modify 302special_spectator prefix {"text": "☆", "color": "blue"}
team modify 302special_spectator collisionRule never
team modify 302special_spectator friendlyFire false
team modify 302special_spectator nametagVisibility always
team modify 302special_spectator seeFriendlyInvisibles false

team add 303player_spectator
team modify 303player_spectator color dark_gray
team modify 303player_spectator prefix {"text": "☆", "color": "aqua"}
team modify 303player_spectator collisionRule never
team modify 303player_spectator friendlyFire true
team modify 303player_spectator nametagVisibility always
team modify 303player_spectator seeFriendlyInvisibles true
