execute positioned ^ ^ ^-1 if block ~ ~ ~ #minecraft:unattachable run tag @s add unattached
execute if entity @s[tag=unattached,tag=dropMainhand] run function galaxy:entity/attachable/drop-hand_main
execute if entity @s[tag=unattached,tag=dropOffhand] run function galaxy:entity/attachable/drop-hand_off
execute if entity @s[tag=unattached,tag=dropSelf] run function galaxy:entity/attachable/drop-self
kill @s[tag=unattached]
