function math:calcu_temp/store_to_1

function cu:library/experience/data/entity_death
execute store success score #1 calcu_temp if score @s expMin = @s expMax
execute unless score #1 calcu_temp matches 1 run scoreboard players operation #2 calcu_temp = @s expMax
execute unless score #1 calcu_temp matches 1 run scoreboard players operation #2 calcu_temp -= @s expMin
execute unless score #1 calcu_temp matches 1 run scoreboard players operation #max random = #2 calcu_temp
function math:random
execute unless score #1 calcu_temp matches 1 store result storage galaxy:temporary exp short 1 run data get storage math:resources random.result
execute if score #1 calcu_temp matches 1 store result storage galaxy:temporary exp int 1 run scoreboard players get @s expMin
execute store result score #3 calcu_temp run data get storage galaxy:temporary exp
execute if score #3 calcu_temp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["initCustomDeath"]}
execute as @e[type=experience_orb,tag=initCustomDeath] run data modify entity @s Value set from storage galaxy:temporary exp
tag @e[type=experience_orb,tag=initCustomDeath] remove initCustomDeath
kill @s

function math:calcu_temp/extract_from_1
