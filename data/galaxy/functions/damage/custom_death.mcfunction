function cu:library/experience-entity_death
execute store success score #calculation_temp1 numeric if score @s expMin = @s expMax
execute unless score #calculation_temp1 numeric matches 1 run scoreboard players operation #calculation_temp2 numeric = @s expMax
execute unless score #calculation_temp1 numeric matches 1 run scoreboard players operation #calculation_temp2 numeric -= @s expMin
execute unless score #calculation_temp1 numeric matches 1 run scoreboard players operation #random_max random = #calculation_temp2 numeric
execute unless score #calculation_temp1 numeric matches 1 store result storage galaxy:temporary exp short 1 run data get storage math:resources random.result
execute if score #calculation_temp1 numeric matches 1 store result storage galaxy:temporary exp int 1 run scoreboard players get @s expMin
execute store result score #calculation_temp3 numeric run data get storage galaxy:temporary exp
execute if score #calculation_temp3 numeric matches 1.. run summon experience_orb ~ ~ ~ {Tags:["initCustomDeath"]}
execute as @e[type=experience_orb,tag=initCustomDeath] run data modify entity @s Value set from storage galaxy:temporary exp
tag @e[type=experience_orb,tag=initCustomDeath] remove initCustomDeath

kill @s
