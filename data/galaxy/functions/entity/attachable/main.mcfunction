execute if block ^ ^ ^-1 #global:unattachable run tag @s add galaxy._tag.unattached
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropMainhand,predicate=!minecraft:entity_properties/mob/hand_main-empty] run function galaxy:entity/attachable/drop-hand_main
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropOffhand,predicate=!minecraft:entity_properties/mob/hand_off-empty] run function galaxy:entity/attachable/drop-hand_off
execute if entity @s[tag=galaxy._tag.unattached,tag=galaxy._tag.attachment.dropSelf] run function galaxy:entity/attachable/drop-self
kill @s[tag=galaxy._tag.unattached]
