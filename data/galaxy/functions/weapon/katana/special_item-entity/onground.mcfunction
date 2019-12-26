execute as @e[type=item,nbt={Item:{tag:{katana:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s run function galaxy:weapon/katana/special_item-entity/onground-katana
execute as @e[type=item,nbt={Item:{tag:{scabbard:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s run function galaxy:weapon/katana/special_item-entity/onground-katana-scabbard
execute as @e[type=item,nbt={Item:{tag:{edge:1}},OnGround:1b},nbt=!{PickupDelay:32767s}] at @s run function galaxy:weapon/katana/special_item-entity/onground-katana-edge

execute as @e[tag=katana,tag=onGroundItem] unless data entity @s HandItems[{Count:1b}] run function galaxy:weapon/katana/replace_main-hand/onground_item_conversion
execute as @e[tag=katana,tag=onGroundItem] unless data entity @s HandItems[{Count:1b}] run kill @s
