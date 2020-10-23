tag @s add triggerWrench

scoreboard players operation #subject0 UUIDMatch = @s MhWrenchUUID0
scoreboard players operation #subject1 UUIDMatch = @s MhWrenchUUID1
scoreboard players operation #subject2 UUIDMatch = @s MhWrenchUUID2
scoreboard players operation #subject3 UUIDMatch = @s MhWrenchUUID3
scoreboard players set #custom UUIDMatch 1
execute as @e[tag=wrench] run function cu:uuid/match/main
tag @e[tag=UUIDMatch,limit=1] add ThisWrench
tag @e[tag=UUIDMatch] remove UUIDMatch

execute as @e[tag=ThisWrench] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/check-block
execute as @e[tag=ThisWrench,tag=wrenchCustomBlock] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/custom_block/main
execute as @e[tag=ThisWrench,tag=wrenchChest] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/chest/main
execute as @e[tag=ThisWrench,tag=wrenchSlab] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/slab/main
execute as @e[tag=ThisWrench,tag=wrenchStairs] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/stairs/main
# execute as @e[tag=ThisWrench,tag=wrenchH4F] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/h4f
# execute as @e[tag=ThisWrench,tag=wrenchA6F] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/a6f

data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench-uuid_less
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
data modify storage cu:replaceitem item.tag.wrench.UUID set from entity @e[tag=ThisWrench,limit=1] Item.tag.customUUID
data modify storage cu:replaceitem item.tag.EntityTag.Item.tag.customUUID set from entity @e[tag=ThisWrench,limit=1] Item.tag.customUUID
function cu:replaceitem/hand_main

kill @e[tag=ThisWrench]

tag @s remove triggerWrench
