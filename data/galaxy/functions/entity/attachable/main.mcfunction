execute positioned ^ ^ ^-1 if block ~ ~ ~ #minecraft:unattachable run tag @s add galaxy._tag.unattached
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropMainhand] run function galaxy:entity/attachable/drop-hand_main
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropOffhand] run function galaxy:entity/attachable/drop-hand_off
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropSelf] run function galaxy:entity/attachable/drop-self
kill @s[tag=galaxy._tag.unattached]
