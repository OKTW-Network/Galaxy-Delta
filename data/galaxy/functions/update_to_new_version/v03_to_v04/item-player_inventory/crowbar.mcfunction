execute store success score #1 calcu_temp run clear @s minecraft:item_frame{crowbar:{}} 1

execute if score #1 calcu_temp matches 1 run function galaxy:tool/give/crowbar

execute if data entity @s Inventory[{tag:{crowbar:{}}}] run function galaxy:update_to_new_version/v03_to_v04/item-player_inventory/crowbar
