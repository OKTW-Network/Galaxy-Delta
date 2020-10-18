data modify storage galaxy:get item set value []
execute if score @s kdsDisplayType matches 1 run function galaxy:weapon/katana/get/katana
execute if score @s kdsDisplayType matches 2 run function galaxy:weapon/katana/get/katana_edge
execute if score @s kdsDisplayType matches 3 run function galaxy:weapon/katana/get/katana_scabbard
execute store result storage galaxy:get item[0].tag.katana.type byte 1 run scoreboard players get @s kdsDisplayType
execute store result storage galaxy:get item[0].tag.katana.style byte 1 run scoreboard players get @s kdsDisplayStyle
execute store result storage galaxy:get item[0].tag.CustomModelData int 1 run scoreboard players get @s kdsDisplayModel
execute if data storage galaxy:get item[0] run function galaxy:item_entity/summon
