# summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Silent:1b,CustomNameVisible:0b,Small:1b,Tags:["elevatorScanner"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["elevatorScanner"],Particle:"block air",Radius:0.5f,Duration:2147483648,WaitTime:2147483647}
scoreboard players set #calculation_temp1 numeric 0
scoreboard players set #calculation_temp2 numeric 0
