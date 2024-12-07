# temporary unplayable build of the game thing
execute as @a unless score @s disable_message matches 1.. run title @s actionbar "this is an unplayable build of the game. \"/trigger disable_message\" to disable this message"
scoreboard players enable @a disable_message

# effects that negate minecraft stuff
effect give @a saturation 15 10 true
effect give @a instant_health 15 10 true

# version bossbar
bossbar set minecraft:version name [{"text":"lostya's tag","color":"#FF8800"},{"text":"             ","color":"#999900","bold":false},{"text":"","color":"#997700"},{"text":"endless classic tag","color":"#FFBB00","bold":false},{"text":"              ","color":"#999900","bold":false},{"text":"v. pre-α ","color":"dark_gray","bold":false},{"score":{"name":"buildnum","objective":"server"},"color":"dark_gray","bold":true}]

# other functions
function tag:tagging/decoration