function tag:bg_processes/const.aaaother

#function tag:bg_processes/menu
function tag:bg_processes/safezone
function tag:bg_processes/tp_to_spawn
function tag:bg_processes/version_bossbar
function tag:bg_processes/beacon
function tag:bg_processes/gather_xp
function tag:bg_processes/bhop
function tag:bg_processes/playtime

function tag:bg_processes/const.join_routine
function tag:bg_processes/const.teams
function tag:bg_processes/const.tag_handler
function tag:bg_processes/actionbar/const.manager
function tag:bg_processes/const.textanim
function tag:bg_processes/const.variables

function tag:bg_processes/tp_back/const.check_for_stands
function tag:bg_processes/tp_back/const.tp_stand_to_player
function tag:bg_processes/tp_back/const.tp_player_to_stand


function tag:effects/levitation
function tag:effects/throw
function tag:effects/glow
function tag:effects/invis
function tag:effects/speed

function tag:items/pearl
function tag:items/tagger_stick
function tag:items/ability
function tag:items/effect
function tag:items/passive
#function tag:items/snowball
function tag:items/taunt

function tag:abilities/0main

kill @e[type=tnt_minecart]

execute as @a[tag=!played_ALPHA] at @s run function tag:intro
