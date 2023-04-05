execute if entity @s[scores={galaxy.entity.katana_display_stand.type=1}] run function galaxy:entity/summon_item/katana_display_stand_1
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=2}] run function galaxy:entity/summon_item/katana_display_stand_2
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=3}] run function galaxy:entity/summon_item/katana_display_stand_3
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=4}] run function galaxy:entity/summon_item/katana_display_stand_2

data modify storage cu:item input set from entity @s data.galaxy.katana_display_stand.item
data modify storage cu:item pickupDelay set value 10s
function cu:item/summon
