function galaxy:weapon/gun/data/find_data_container_from_main_hand
execute if entity @e[tag=galaxy._tag.gun.data.find_data_container.elect] run function galaxy:weapon/gun/data/fetch_to_main_hand/set_from_elect
execute unless entity @e[tag=galaxy._tag.gun.data.find_data_container.elect] run function galaxy:weapon/gun/data/fetch_to_main_hand/set_new
