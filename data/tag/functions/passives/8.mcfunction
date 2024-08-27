execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger] if score @s ab.p.active matches 1.. if score @s jump.passive matches 1.. run playsound block.soul_sand.fall player @a ~ ~ ~ 2
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger] if score @s ab.p.active matches 1.. if score @s jump.passive matches 1.. run particle soul ~ ~-.2 ~ .25 .1 .25 .02 15
execute if score @s jump.passive matches 1.. run scoreboard players set @s jump.passive 0

scoreboard players set @s ab.p.active 0
effect clear @s jump_boost


execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~ ~ #fences if block ~1 ~1 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~ ~ #fences if block ~-1 ~1 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~1 #fences if block ~ ~1 ~1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~-1 #fences if block ~ ~1 ~-1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~ #fences if block ~ ~1 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~ ~ #fences if block ~1 ~1 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~ ~ #fences if block ~-1 ~1 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~1 #fences if block ~ ~1 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~-1 #fences if block ~ ~1 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~ ~ #fences if block ~ ~1 ~ air run scoreboard players set @s ab.p.active 1


execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~1 ~ #slabs if block ~1 ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~1 ~ #slabs if block ~-1 ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~1 #slabs if block ~ ~2 ~1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~-1 #slabs if block ~ ~2 ~-1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~ #slabs if block ~ ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~1 ~ #slabs if block ~1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~1 ~ #slabs if block ~-1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~1 #slabs if block ~ ~2 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~-1 #slabs if block ~ ~2 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~1 ~ #slabs if block ~ ~2 ~ air run scoreboard players set @s ab.p.active 1

execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~1 ~1 ~ #tag:non_jumpable_blocks if block ~1 ~2 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~-1 ~1 ~ #tag:non_jumpable_blocks if block ~-1 ~2 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~1 #tag:non_jumpable_blocks if block ~ ~2 ~1 air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~-1 #tag:non_jumpable_blocks if block ~ ~2 ~-1 air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~ #tag:non_jumpable_blocks if block ~ ~2 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~1 ~1 ~ #tag:non_jumpable_blocks if block ~1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~-1 ~1 ~ #tag:non_jumpable_blocks if block ~-1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~1 #tag:non_jumpable_blocks if block ~ ~2 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~-1 #tag:non_jumpable_blocks if block ~ ~2 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~ ~1 ~ #tag:non_jumpable_blocks if block ~ ~2 ~ air run scoreboard players set @s ab.p.active 1


execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~2 ~ #slabs if block ~1 ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~2 ~ #slabs if block ~-1 ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~1 #slabs if block ~ ~3 ~1 air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~-1 #slabs if block ~ ~3 ~-1 air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~ #slabs if block ~ ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~1 ~2 ~ #slabs if block ~1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~-1 ~2 ~ #slabs if block ~-1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~1 #slabs if block ~ ~3 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~-1 #slabs if block ~ ~3 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs if block ~ ~2 ~ #slabs if block ~ ~3 ~ air run scoreboard players set @s ab.p.active 1



execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~1 ~1 ~ #tag:non_jumpable_blocks if block ~1 ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~-1 ~1 ~ #tag:non_jumpable_blocks if block ~-1 ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~1 #tag:non_jumpable_blocks if block ~ ~2 ~1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~-1 #tag:non_jumpable_blocks if block ~ ~2 ~-1 air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~ #tag:non_jumpable_blocks if block ~ ~2 ~ air run effect give @s jump_boost infinite 0 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~1 ~1 ~ #tag:non_jumpable_blocks if block ~1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~-1 ~1 ~ #tag:non_jumpable_blocks if block ~-1 ~2 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~1 #tag:non_jumpable_blocks if block ~ ~2 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~-1 #tag:non_jumpable_blocks if block ~ ~2 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~1 ~ #tag:non_jumpable_blocks if block ~ ~2 ~ air run scoreboard players set @s ab.p.active 1

execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~1 ~2 ~ #slabs if block ~1 ~3 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~-1 ~2 ~ #slabs if block ~-1 ~3 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~1 #slabs if block ~ ~3 ~1 air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~-1 #slabs if block ~ ~3 ~-1 air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~ #slabs if block ~ ~3 ~ air run effect give @s jump_boost infinite 1 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~1 ~2 ~ #slabs if block ~1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~-1 ~2 ~ #slabs if block ~-1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~1 #slabs if block ~ ~3 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~-1 #slabs if block ~ ~3 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs if block ~ ~2 ~ #slabs if block ~ ~3 ~ air run scoreboard players set @s ab.p.active 1


execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~1 ~2 ~ #tag:non_jumpable_blocks if block ~1 ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~-1 ~2 ~ #tag:non_jumpable_blocks if block ~-1 ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~1 #tag:non_jumpable_blocks if block ~ ~3 ~1 air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~-1 #tag:non_jumpable_blocks if block ~ ~3 ~-1 air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~ #tag:non_jumpable_blocks if block ~ ~3 ~ air run effect give @s jump_boost infinite 2 true
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~1 ~2 ~ #tag:non_jumpable_blocks if block ~1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~-1 ~2 ~ #tag:non_jumpable_blocks if block ~-1 ~3 ~ air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~1 #tag:non_jumpable_blocks if block ~ ~3 ~1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~-1 #tag:non_jumpable_blocks if block ~ ~3 ~-1 air run scoreboard players set @s ab.p.active 1
execute as @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] if block ~ ~ ~ #slabs unless block ~ ~2 ~ #tag:non_jumpable_blocks if block ~ ~3 ~ air run scoreboard players set @s ab.p.active 1


#execute unless entity @s[tag=!safezoned, gamemode=adventure, tag=!tagger, nbt={OnGround:1b}] unless block ~ ~ ~ #slabs unless block ~1 ~1 ~ #slabs unless block ~-1 ~1 ~ #slabs unless block ~ ~1 ~1 #slabs unless block ~ ~1 ~-1 #slabs 