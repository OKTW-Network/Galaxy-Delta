execute store success score #1 calcu_temp run clear @s minecraft:item_frame{wrench:{}} 1

execute if score #1 calcu_temp matches 1 run function galaxy:tool/give/wrench

execute if data entity @s Inventory[{tag:{wrench:{}}}] run function galaxy:update_to_new_version/v03/item-player_inventory/wrench
