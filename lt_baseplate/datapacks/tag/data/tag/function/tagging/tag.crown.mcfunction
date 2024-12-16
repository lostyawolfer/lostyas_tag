tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " took the crown of ", {"selector": "@a[tag = hit_detect.taker]"}]
tag @a[tag = hit_detect.giver] add tagger
tag @a[tag = hit_detect.taker] remove tagger