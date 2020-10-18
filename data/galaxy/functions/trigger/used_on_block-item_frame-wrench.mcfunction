execute if score @s useItemFrame matches 1.. run function galaxy:tool/wrench/handler-used_on_block-item_frame-wrench
scoreboard players set @s useItemFrame 0
advancement revoke @s only galaxy:trigger/used_on_block-item_frame-wrench
