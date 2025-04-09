# constants
scoreboard objectives add consts dummy
    scoreboard players set -1 consts -1
    scoreboard players set 0 consts 0
    scoreboard players set 1 consts 1
    scoreboard players set 2 consts 2
    scoreboard players set 3 consts 3
    scoreboard players set 5 consts 5
    scoreboard players set 7 consts 7
    scoreboard players set 8 consts 8
    scoreboard players set 9 consts 9
    scoreboard players set 10 consts 10
    scoreboard players set 15 consts 15
    scoreboard players set 20 consts 20
    scoreboard players set 60 consts 60
    scoreboard players set 100 consts 100
    scoreboard players set 1000 consts 1000
    scoreboard players set 7000 consts 7000


# effect scoreboards
scoreboard objectives add effect.glowing dummy
scoreboard objectives add effect.strong_levitation dummy
scoreboard objectives add effect.freeze dummy
scoreboard objectives add effect.speed dummy
scoreboard objectives add effect.invisibility dummy
scoreboard objectives add effect.downed dummy
scoreboard objectives add effect.downed.count_up dummy
scoreboard objectives add effect.downed.seconds dummy
scoreboard objectives add effect.downed.seconds.10 dummy
scoreboard objectives add effect.downed.ms dummy
scoreboard objectives add effect.downed.title_random dummy
# scoreboard objectives add effect.downed.seconds_even dummy


# misc scoreboards
scoreboard objectives add server dummy

function tag:misc/update_player_list
scoreboard objectives add anim.death dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add screen_effect dummy

scoreboard objectives add hit_detect.giver minecraft.custom:minecraft.damage_dealt
scoreboard objectives add hit_detect.taker minecraft.custom:minecraft.damage_taken

scoreboard objectives add stat.speed dummy
    scoreboard objectives add stat.speed.digit_1 dummy
    scoreboard objectives add stat.speed.digit_2 dummy
    scoreboard objectives add stat.speed.digit_3 dummy
scoreboard objectives add stat.speed.iter_1 dummy
scoreboard objectives add stat.speed.iter_2 dummy
scoreboard objectives add stat.speed.iter_3 dummy
scoreboard objectives add stat.speed.iter_4 dummy
scoreboard objectives add stat.speed.iter_5 dummy
scoreboard objectives add stat.speed.iter_6 dummy
scoreboard objectives add stat.speed.iter_7 dummy
scoreboard objectives add stat.speed.iter_8 dummy
scoreboard objectives add stat.speed.iter_9 dummy
scoreboard objectives add stat.speed.calculate_new_x dummy
scoreboard objectives add stat.speed.calculate_new_y dummy
scoreboard objectives add stat.speed.calculate_new_z dummy
scoreboard objectives add stat.speed.calculate_old_x dummy
scoreboard objectives add stat.speed.calculate_old_y dummy
scoreboard objectives add stat.speed.calculate_old_z dummy
scoreboard objectives add stat.speed.calculate_difference_x dummy
scoreboard objectives add stat.speed.calculate_difference_y dummy
scoreboard objectives add stat.speed.calculate_difference_z dummy

scoreboard objectives add stat.vertical_speed dummy

scoreboard objectives add stat.tagger_time dummy
scoreboard objectives add stat.tagger_time.total dummy

scoreboard objectives add stat.wasnt_selected_steak dummy
scoreboard objectives add stat.current_hight dummy
scoreboard objectives add stat.flew_in_ability minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add stat.xp dummy

scoreboard objectives add stat.get_tagged dummy

scoreboard objectives add p.cd.s dummy
scoreboard objectives add p.cd dummy
scoreboard objectives add p.use.trigger minecraft.used:minecraft.ender_pearl

scoreboard objectives add gh.cd.s dummy
scoreboard objectives add gh.cd dummy
scoreboard objectives add gh.use.trigger minecraft.used:minecraft.goat_horn
scoreboard objectives add gh.current dummy
    scoreboard players set $product_type gh.current 3

scoreboard objectives add ab.cd.s dummy
scoreboard objectives add ab.cd dummy
scoreboard objectives add ab.use.s dummy
scoreboard objectives add ab.use dummy
scoreboard objectives add ab.use2.s dummy
scoreboard objectives add ab.use2 dummy
scoreboard objectives add ab.use.trigger minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ab.current dummy
    scoreboard players set $product_type ab.current 1

scoreboard objectives add pa.active dummy
scoreboard objectives add pa.current dummy
    scoreboard players set $product_type pa.current 2
scoreboard objectives add pa.ability_specific.jump minecraft.custom:minecraft.jump
scoreboard objectives add pa.ability_specific.dealt_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add pa.ability_specific.pearl_thrown minecraft.used:minecraft.ender_pearl
scoreboard objectives add pa.ability_specific.counter dummy
scoreboard objectives add pa.ability_specific.counter.s dummy


scoreboard objectives add menu dummy
scoreboard objectives add menu.selecting dummy
scoreboard objectives add menu.trigger minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add ab.unlocked_1 dummy
scoreboard objectives add ab.unlocked_2 dummy
scoreboard objectives add ab.unlocked_3 dummy
scoreboard objectives add ab.unlocked_4 dummy
scoreboard objectives add ab.unlocked_5 dummy
scoreboard objectives add ab.unlocked_6 dummy
scoreboard objectives add ab.unlocked_7 dummy
scoreboard objectives add ab.unlocked_8 dummy
scoreboard objectives add ab.unlocked_9 dummy
scoreboard objectives add ab.unlocked_10 dummy
scoreboard objectives add ab.unlocked_11 dummy
scoreboard objectives add ab.unlocked_12 dummy

scoreboard objectives add pa.unlocked_1 dummy
scoreboard objectives add pa.unlocked_2 dummy
scoreboard objectives add pa.unlocked_3 dummy
scoreboard objectives add pa.unlocked_4 dummy
scoreboard objectives add pa.unlocked_5 dummy
scoreboard objectives add pa.unlocked_6 dummy
scoreboard objectives add pa.unlocked_7 dummy
scoreboard objectives add pa.unlocked_8 dummy
scoreboard objectives add pa.unlocked_9 dummy
scoreboard objectives add pa.unlocked_10 dummy
scoreboard objectives add pa.unlocked_11 dummy
scoreboard objectives add pa.unlocked_12 dummy

scoreboard objectives add gh.unlocked_1 dummy
scoreboard objectives add gh.unlocked_2 dummy
scoreboard objectives add gh.unlocked_3 dummy
scoreboard objectives add gh.unlocked_4 dummy
scoreboard objectives add gh.unlocked_5 dummy
scoreboard objectives add gh.unlocked_6 dummy
scoreboard objectives add gh.unlocked_7 dummy
scoreboard objectives add gh.unlocked_8 dummy


scoreboard objectives add points dummy
scoreboard objectives add points.digit_1 dummy
scoreboard objectives add points.digit_2 dummy
scoreboard objectives add points.digit_3 dummy
scoreboard objectives add points.digit_4 dummy
scoreboard objectives add points.title dummy
scoreboard objectives add points.best dummy
scoreboard objectives add points.best.digit_1 dummy
scoreboard objectives add points.best.digit_2 dummy
scoreboard objectives add points.best.digit_3 dummy
scoreboard objectives add points.best.digit_4 dummy
scoreboard objectives add points.recieve dummy

scoreboard objectives add points.reason.trigger dummy
scoreboard objectives add points.reason.store dummy
scoreboard objectives add points.reason.store2 dummy
scoreboard objectives add points.reason.anim dummy
scoreboard objectives add points.reason.anim2 dummy

scoreboard objectives add xp.recieve dummy
scoreboard objectives add xp.recieve.title dummy

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add jump.bhop dummy
scoreboard objectives add jump.bhop2 dummy
scoreboard objectives add jump.timer dummy

scoreboard objectives add tp.id dummy
scoreboard objectives add tp.timer dummy

scoreboard objectives add safezone_state dummy

scoreboard objectives add is_sneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add anticheat dummy

scoreboard objectives add joined minecraft.custom:minecraft.leave_game


scoreboard objectives add logging dummy
scoreboard objectives add tagger_heartbeat dummy
scoreboard objectives add gain_for_tagging_timer dummy
scoreboard objectives add gain_for_tagging_timer2 dummy
scoreboard objectives add escape_timer dummy
scoreboard objectives add fall_distance minecraft.custom:minecraft.fall_one_cm

scoreboard objectives add game_count dummy


# bossbars
bossbar add tag:top ""
bossbar set tag:top visible true
bossbar set tag:top max 1
bossbar set tag:top value 0

bossbar add tag:notif.safezone {"translate": "notif.safezone", "color": "green"}
bossbar set tag:notif.safezone name {"translate": "notif.safezone", "color": "green"}
bossbar set tag:notif.safezone visible true
bossbar set tag:notif.safezone max 1
bossbar set tag:notif.safezone value 0



# teams
team add pearl
team modify pearl color dark_aqua
team modify pearl collisionRule never

team add 001tagger
team modify 001tagger color gold
team modify 001tagger collisionRule never
team modify 001tagger friendlyFire true
team modify 001tagger nametagVisibility always
team modify 001tagger seeFriendlyInvisibles true

team add 011tagger
team modify 011tagger color yellow
team modify 011tagger collisionRule never
team modify 011tagger friendlyFire true
team modify 011tagger nametagVisibility always
team modify 011tagger seeFriendlyInvisibles true

team add 021tagger
team modify 021tagger color white
team modify 021tagger collisionRule never
team modify 021tagger friendlyFire true
team modify 021tagger nametagVisibility always
team modify 021tagger seeFriendlyInvisibles true

team add 001tagger_crouch
team modify 001tagger_crouch color gold
team modify 001tagger_crouch suffix {"text": "↓", "color": "yellow"}
team modify 001tagger_crouch collisionRule never
team modify 001tagger_crouch friendlyFire true
team modify 001tagger_crouch nametagVisibility always
team modify 001tagger_crouch seeFriendlyInvisibles true

team add 011tagger_crouch
team modify 011tagger_crouch color yellow
team modify 011tagger_crouch suffix {"text": "↓", "color": "yellow"}
team modify 011tagger_crouch collisionRule never
team modify 011tagger_crouch friendlyFire true
team modify 011tagger_crouch nametagVisibility always
team modify 011tagger_crouch seeFriendlyInvisibles true

team add 021tagger_crouch
team modify 021tagger_crouch color white
team modify 021tagger_crouch suffix {"text": "↓", "color": "yellow"}
team modify 021tagger_crouch collisionRule never
team modify 021tagger_crouch friendlyFire true
team modify 021tagger_crouch nametagVisibility always
team modify 021tagger_crouch seeFriendlyInvisibles true

team add 002special
team modify 002special color blue
team modify 002special collisionRule never
team modify 002special friendlyFire true
team modify 002special nametagVisibility always
team modify 002special seeFriendlyInvisibles false

team add 012special_alert
team modify 012special_alert color blue
team modify 012special_alert suffix {"text": "⚠", "color": "white"}
team modify 012special_alert collisionRule never
team modify 012special_alert friendlyFire true
team modify 012special_alert nametagVisibility always
team modify 012special_alert seeFriendlyInvisibles false

team add 022special_alert
team modify 022special_alert color blue
team modify 022special_alert suffix {"text": "⚠", "color": "white"}
team modify 022special_alert collisionRule never
team modify 022special_alert friendlyFire true
team modify 022special_alert nametagVisibility always
team modify 022special_alert seeFriendlyInvisibles false


team add 003player
team modify 003player color aqua
team modify 003player collisionRule never
team modify 003player friendlyFire true
team modify 003player nametagVisibility hideForOtherTeams
team modify 003player seeFriendlyInvisibles true

team add 013player_glow
team modify 013player_glow color aqua
team modify 013player_glow collisionRule never
team modify 013player_glow friendlyFire true
team modify 013player_glow nametagVisibility always
team modify 013player_glow seeFriendlyInvisibles true




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
