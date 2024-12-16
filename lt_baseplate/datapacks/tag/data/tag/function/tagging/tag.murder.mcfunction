tellraw @a[scores = {logging = 1}] ["! log: ", {"selector": "@a[tag = hit_detect.giver]"}, " killed ", {"selector": "@a[tag = hit_detect.taker]"}]
# tag @a[tag = hit_detect.giver] remove tagger
tag @a[tag = hit_detect.taker] add dead