data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench
data modify storage galaxy:temp +tool.wrench.return_used.item set from storage galaxy:get item[0]

scoreboard players set #tool.wrench.return_used.method galaxy 0
execute if entity @s[tag=galaxy._tag.wrench.inMainHand,predicate=minecraft:entity_properties/mob/main_hand-empty] run scoreboard players set #tool.wrench.return_used.method galaxy 1
execute if score #tool.wrench.return_used.method galaxy matches 0 if entity @s[tag=galaxy._tag.wrench.inOffHand,predicate=minecraft:entity_properties/mob/off_hand-empty] run scoreboard players set #tool.wrench.return_used.method galaxy 2
execute if score #tool.wrench.return_used.method galaxy matches 0 if entity @s[predicate=minecraft:entity_properties/mob/main_hand-empty] run scoreboard players set #tool.wrench.return_used.method galaxy 1
execute if score #tool.wrench.return_used.method galaxy matches 0 if entity @s[predicate=minecraft:entity_properties/mob/off_hand-empty] run scoreboard players set #tool.wrench.return_used.method galaxy 2

execute if score #tool.wrench.return_used.method galaxy matches 0 run data modify storage cu:item give.input set from storage galaxy:temp +tool.wrench.return_used.item
execute if score #tool.wrench.return_used.method galaxy matches 0 run function cu:item/give/main

execute if score #tool.wrench.return_used.method galaxy matches 1.. run data modify storage cu:item replaceitem.input set from storage galaxy:temp +tool.wrench.return_used.item
execute if score #tool.wrench.return_used.method galaxy matches 1 run function cu:item/replaceitem/main_hand
execute if score #tool.wrench.return_used.method galaxy matches 2 run function cu:item/replaceitem/off_hand

function galaxy:tool/wrench/update_tags
