bossbar add version ""
bossbar set minecraft:version color yellow
bossbar set minecraft:version max 1
bossbar set minecraft:version value 1
bossbar set minecraft:version visible true

scoreboard objectives add aftertagger_invincibility dummy
scoreboard objectives add tp_outmap_anim dummy
scoreboard objectives add playtime.near_tagger.title_anim dummy
scoreboard objectives add zoom_anim dummy
scoreboard objectives add effect.glow dummy
scoreboard objectives add p_anim dummy
scoreboard objectives add playtime dummy
scoreboard objectives modify playtime displayname {"text":"⌚","color":"green"}
scoreboard objectives setdisplay list playtime
scoreboard objectives setdisplay belowName playtime
scoreboard objectives add p_cd_s dummy
scoreboard objectives add ab.anim dummy
scoreboard objectives add notifanim dummy
scoreboard objectives add settings.setpos.pearl trigger
scoreboard objectives add settings.setpos.tag_stick trigger
scoreboard objectives add playtime.near_tagger dummy
scoreboard objectives add p_has dummy
scoreboard objectives add tp_inblocks dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add ab.cd_ms dummy
scoreboard objectives add jump.bhop2.title dummy
scoreboard objectives add hunger food
scoreboard objectives add ab.use_s dummy
scoreboard objectives add settings.setpos.passive_ability trigger
scoreboard objectives add left minecraft.custom:minecraft.leave_game
scoreboard objectives add effect.throw dummy
scoreboard objectives add ab.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add playtime.run_away dummy
scoreboard objectives add tp_inblocks_tick dummy
scoreboard objectives add settings.setpos.active_ability trigger
scoreboard objectives add ab.has dummy
scoreboard objectives add p_cd_ms dummy
scoreboard objectives add effect.speed dummy
scoreboard objectives add consts dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add jump.timer dummy
scoreboard objectives add rescue trigger
scoreboard objectives add ab.use_ms dummy
scoreboard objectives add buildnum dummy
scoreboard objectives add d deathCount
scoreboard objectives add fall.test minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add effect.invis dummy
scoreboard objectives add session_id dummy
scoreboard objectives add tag.give_out minecraft.custom:minecraft.damage_dealt
#?????
scoreboard objectives add ab.times.use dummy
#?????
scoreboard objectives add playtime.run_away.title_anim dummy
scoreboard objectives add effect.levitation dummy
scoreboard objectives add ab.cd_s dummy
scoreboard objectives add p_use minecraft.used:minecraft.ender_pearl
scoreboard objectives add tag.recieve minecraft.custom:minecraft.damage_taken
scoreboard objectives add jump.bhop2 dummy
scoreboard objectives add tp_outmap dummy
scoreboard objectives add ab.times.cd dummy
scoreboard objectives add jump.bhop dummy
scoreboard objectives add jump.bhop.title_anim dummy


team add a.tagger
team add a.tagger.crouch
team add x.player
team add y.safezoned
team add y.safezoned.tagger
team add z.othergm
team add z.othergm.tagger

team modify x.player color aqua
team modify a.tagger color gold
team modify a.tagger.crouch color gold
team modify y.safezoned color gray
team modify y.safezoned.tagger color gray
team modify z.othergm color dark_gray
team modify z.othergm.tagger color dark_gray

#team modify x.player prefix
#team modify a.tagger prefix
team modify a.tagger.crouch suffix {"text": "↓","color": "#7D5300"}
team modify y.safezoned prefix {"text": "⭐","color": "aqua"}
team modify y.safezoned.tagger prefix {"text": "⭐","color": "gold"}
team modify z.othergm prefix {"text": "⭐","color": "aqua"}
team modify z.othergm.tagger prefix {"text": "⭐","color": "gold"}

team modify x.player collisionRule never
team modify a.tagger collisionRule never
team modify a.tagger.crouch collisionRule never
team modify y.safezoned collisionRule never
team modify y.safezoned.tagger collisionRule never
team modify z.othergm collisionRule never
team modify z.othergm.tagger collisionRule never

team modify x.player nametagVisibility hideForOtherTeams
team modify a.tagger nametagVisibility always
team modify a.tagger.crouch nametagVisibility never
team modify y.safezoned nametagVisibility always
team modify y.safezoned.tagger nametagVisibility always
team modify z.othergm nametagVisibility always
team modify z.othergm.tagger nametagVisibility always

scoreboard players add buildnum buildnum 1
title @a times 0 20 3
tellraw @a {"text":"✔ Reloaded!","color":"green"}