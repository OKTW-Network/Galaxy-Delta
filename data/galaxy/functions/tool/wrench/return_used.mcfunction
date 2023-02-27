data modify storage galaxy:temp +tool.get.UUID set value [I;0,0,0,0]
execute store result storage galaxy:temp +tool.get.UUID[0] int 1 run scoreboard players get @s galaxy.tool.wrench.UUID.using0
execute store result storage galaxy:temp +tool.get.UUID[1] int 1 run scoreboard players get @s galaxy.tool.wrench.UUID.using1
execute store result storage galaxy:temp +tool.get.UUID[2] int 1 run scoreboard players get @s galaxy.tool.wrench.UUID.using2
execute store result storage galaxy:temp +tool.get.UUID[3] int 1 run scoreboard players get @s galaxy.tool.wrench.UUID.using3
data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench-given_uuid
data modify storage cu:item replaceitem.input set from storage galaxy:get item[0]
execute if entity @s[tag=galaxy._tag.useWrenchMainHand] run function cu:item/replaceitem/hand_main
execute if entity @s[tag=galaxy._tag.useWrenchOffHand] run function cu:item/replaceitem/hand_off
