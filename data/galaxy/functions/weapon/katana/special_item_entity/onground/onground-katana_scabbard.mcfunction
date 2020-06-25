function galaxy:weapon/katana/special_item_entity/onground/summon-init
scoreboard players set #calculation_temp1 numeric 100302
function galaxy:weapon/katana/special_item_entity/calculate-custom_model_data
execute store result entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #calculation_temp1 numeric
tag @e[tag=onGroundItem,tag=init] remove init
kill @s
