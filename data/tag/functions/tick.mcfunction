## everything here runs every single minecraft tick
# lag guaranteed. immense amounts of it. but who cares

function tag:passives/0main
function tag:abilities/0main

function tag:effects/levitation
function tag:effects/throw
function tag:effects/throw_small
function tag:effects/glow
function tag:effects/invis
function tag:effects/speed
function tag:effects/down
function tag:effects/freeze

function tag:items/pearl
function tag:items/tagger_stick
function tag:items/ability
function tag:items/effect
function tag:items/passive
function tag:items/taunt
function tag:items/menu

function tag:bg_processes/tick.misc

function tag:bg_processes/tick.safezone
function tag:bg_processes/tick.special_blocks
function tag:bg_processes/tick.version
function tag:bg_processes/tick.xp
function tag:bg_processes/tick.bhop
function tag:bg_processes/playtime

function tag:bg_processes/tick.join_routine
function tag:bg_processes/tick.teams_handler
function tag:bg_processes/tick.tag_handler
function tag:bg_processes/actionbar/tick.manager
function tag:bg_processes/tick.animations
function tag:bg_processes/tick.variables

function tag:bg_processes/tp_back/tick.check_for_stands
function tag:bg_processes/tp_back/tick.tp_stand_to_player
function tag:bg_processes/tp_back/tick.tp_player_to_stand

function tag:events/glow
function tag:events/major.air_raid

kill @e[type=tnt_minecart]

execute as @a[tag=!played_ALPHA] at @s run function tag:misc/intro