execute if entity @s[scores={galaxy.entity.katana_display_stand.type=1}] run function galaxy:entity/summon_item/katana_display_stand-1
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=2}] run function galaxy:entity/summon_item/katana_display_stand-2
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=3}] run function galaxy:entity/summon_item/katana_display_stand-3
execute if entity @s[scores={galaxy.entity.katana_display_stand.type=4}] run function galaxy:entity/summon_item/katana_display_stand-2

data modify storage cu:item input set from entity @s ArmorItems[3].tag.CustomData.galaxy.data.displayOriginalItem
item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
data modify storage cu:item pickupDelay set value 0s
function cu:item/summon

kill @s
