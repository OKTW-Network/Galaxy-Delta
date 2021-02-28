execute store result score #1 calcu_temp run clear @s minecraft:item_frame{katanaShowcase:{type:3}} 64
execute if score #1 calcu_temp matches 1.. run data modify storage galaxy:get item set value []
execute if score #1 calcu_temp matches 1.. run function galaxy:entity/get/katana_display_stand-3
execute if score #1 calcu_temp matches 1.. run execute store result storage galaxy:get item.Count byte 1 run scoreboard players get #1 calcu_temp
execute if score #1 calcu_temp matches 1.. run function galaxy:item_entity/summon-give

execute if data entity @s Inventory[{tag:{katanaShowcase:{type:3}}}] run function galaxy:update_to_new_version/v03_to_v04/item-player_inventory/katana_display_stand-3
