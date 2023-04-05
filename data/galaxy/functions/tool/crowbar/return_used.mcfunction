data modify storage galaxy:get item set value []
function galaxy:tool/get/crowbar
data modify storage galaxy:temp +tool.crowbar.return_used.item set from storage galaxy:get item[0]

scoreboard players set #tool.crowbar.return_used.method galaxy 0
execute if entity @s[tag=galaxy._tag.crowbar.inMainHand,predicate=minecraft:entity_properties/mob/hand_main-empty] run scoreboard players set #tool.crowbar.return_used.method galaxy 1
execute if score #tool.crowbar.return_used.method galaxy matches 0 if entity @s[tag=galaxy._tag.crowbar.inOffHand,predicate=minecraft:entity_properties/mob/hand_off-empty] run scoreboard players set #tool.crowbar.return_used.method galaxy 2
execute if score #tool.crowbar.return_used.method galaxy matches 0 if entity @s[predicate=minecraft:entity_properties/mob/hand_main-empty] run scoreboard players set #tool.crowbar.return_used.method galaxy 1
execute if score #tool.crowbar.return_used.method galaxy matches 0 if entity @s[predicate=minecraft:entity_properties/mob/hand_off-empty] run scoreboard players set #tool.crowbar.return_used.method galaxy 2

execute if score #tool.crowbar.return_used.method galaxy matches 0 run data modify storage cu:item input set from storage galaxy:temp +tool.crowbar.return_used.item
execute if score #tool.crowbar.return_used.method galaxy matches 0 run function cu:item/give

execute if score #tool.crowbar.return_used.method galaxy matches 1.. run data modify storage cu:item replaceitem.input set from storage galaxy:temp +tool.crowbar.return_used.item
execute if score #tool.crowbar.return_used.method galaxy matches 1 run function cu:item/replaceitem/hand_main
execute if score #tool.crowbar.return_used.method galaxy matches 2 run function cu:item/replaceitem/hand_off

function galaxy:tool/crowbar/update_tags
