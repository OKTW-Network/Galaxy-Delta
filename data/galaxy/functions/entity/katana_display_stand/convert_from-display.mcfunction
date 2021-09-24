item replace entity @s weapon.mainhand with minecraft:air
data modify storage galaxy:get item set value []
execute store result score #1 calcu_temp run data get entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaTag.type
execute if score #1 calcu_temp matches 1 run function galaxy:weapon/katana/get/_dummy
execute if score #1 calcu_temp matches 2 run function galaxy:weapon/katana/get/_dummy_edge
execute if score #1 calcu_temp matches 3 run function galaxy:weapon/katana/get/_dummy_scabbard
data modify storage galaxy:temp item set from storage galaxy:get item[0]
data modify storage galaxy:temp item.tag.CustomData.galaxy.tag set from entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaTag
data modify storage galaxy:temp item.tag.display set from entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaDisplay
data modify storage galaxy:temp item.tag.CustomModelData set from entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaCustomModelData
data modify entity @s HandItems[0] set from storage galaxy:temp item
