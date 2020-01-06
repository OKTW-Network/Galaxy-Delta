execute store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s HandItems[0].tag.miniUUIDLeast
execute unless entity @a[tag=returnWrench] as @a if score @s MhWrenchUUIDM = #calculation_temp1 numeric if score @s MhWrenchUUIDL = #calculation_temp2 numeric run tag @s add returnWrench
execute as @a[tag=returnWrench,gamemode=!creative] run function galaxy:tool/get/wrench
execute as @a[tag=returnWrench,gamemode=creative] unless predicate galaxy:tool/hand_main-wrench run function galaxy:tool/get/wrench
tag @a[tag=returnWrench] remove returnWrench
