# tp @s ~ ~0.5 ~
scoreboard players set @s effect.strong_levitation 7

playsound entity.firework_rocket.blast_far player @a ~ ~.1 ~
playsound entity.firework_rocket.launch player @a ~ ~.1 ~

particle flash ~ ~ ~ 0 0 0 0 1

# TODO: make the effects not show up when the person is invisible