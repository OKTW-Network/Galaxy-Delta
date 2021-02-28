execute if score @s useItemFrame matches 1.. run function galaxy:entity/handler-used_on_block-item_frame-place_entity
scoreboard players set @s useItemFrame 0
advancement revoke @s only galaxy:trigger/used_on_block-item_frame-place_entity
