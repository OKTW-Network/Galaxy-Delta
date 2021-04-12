data modify storage galaxy:with UUID set value [I;0,0,0,0]
execute store result storage galaxy:with UUID[0] int 1 run scoreboard players get @s UseWrenchUUID0
execute store result storage galaxy:with UUID[1] int 1 run scoreboard players get @s UseWrenchUUID1
execute store result storage galaxy:with UUID[2] int 1 run scoreboard players get @s UseWrenchUUID2
execute store result storage galaxy:with UUID[3] int 1 run scoreboard players get @s UseWrenchUUID3
data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench-given_uuid
data modify storage cu:item input set from storage galaxy:get item[0]
execute if entity @s[tag=useWrenchMh] run function cu:item/replaceitem/hand_main
execute if entity @s[tag=useWrenchFh] run function cu:item/replaceitem/hand_off
