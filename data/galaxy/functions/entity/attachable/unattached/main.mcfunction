execute if entity @s[tag=galaxy._tag.entity.attachment.dropMainhandItem,predicate=!minecraft:entity_properties/mob/hand_main-empty] run function galaxy:entity/attachable/unattached/drop-hand_main
execute if entity @s[tag=galaxy._tag.entity.attachment.dropOffhand,predicate=!minecraft:entity_properties/mob/hand_off-empty] run function galaxy:entity/attachable/unattached/drop-hand_off
execute if entity @s[tag=galaxy._tag.entity.attachment.dropHeadConvertible] run function galaxy:entity/attachable/unattached/drop-head_convertible
kill @s
