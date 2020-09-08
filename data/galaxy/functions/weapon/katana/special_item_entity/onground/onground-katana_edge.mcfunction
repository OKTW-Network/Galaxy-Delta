function galaxy:weapon/katana/special_item_entity/onground/summon-init
scoreboard players set #1 calcu_temp 100301
function galaxy:weapon/katana/special_item_entity/calculate-custom_model_data
execute store result entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp
tag @e[tag=onGroundItem,tag=init] remove init
kill @s
