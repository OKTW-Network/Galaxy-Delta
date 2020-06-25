execute positioned ^ ^ ^-1 if block ~ ~ ~ #minecraft:unattachable run tag @s add unattached
execute if entity @s[tag=unattached,tag=drop_mainhand] run function galaxy:block/attachable-drop-hand_main
execute if entity @s[tag=unattached,tag=drop_offhand] run function galaxy:block/attachable-drop-hand_off
execute if entity @s[tag=unattached,tag=drop_self] run function galaxy:block/attachable-drop-self
kill @s[tag=unattached]
