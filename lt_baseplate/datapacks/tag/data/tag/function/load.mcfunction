# temporary variable; used to store if someone wants the "unplayable build" message removed
scoreboard objectives add disable_message trigger

scoreboard objectives add server dummy
scoreboard players add buildnum server 1

bossbar add version ""
bossbar set version visible true
bossbar set version max 1
bossbar set version value 0