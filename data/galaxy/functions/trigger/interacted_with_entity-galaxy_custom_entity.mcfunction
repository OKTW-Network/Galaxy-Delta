execute if entity @s[advancements={galaxy:trigger/interacted_with_entity-wrench=false,galaxy:trigger/interacted_with_entity-crowbar=false}] run function galaxy:entity/handler-interacted_with_entity-galaxy_custom_entity
execute if entity @s[advancements={galaxy:trigger/interacted_with_entity-wrench=true}] run function galaxy:tool/wrench/handler-interacted_with_entity-galaxy_custom_entity
execute if entity @s[advancements={galaxy:trigger/interacted_with_entity-crowbar=true}] run function galaxy:tool/crowbar/handler-interacted_with_entity-galaxy_custom_entity
advancement revoke @s[advancements={galaxy:trigger/interacted_with_entity-wrench=true}] only galaxy:trigger/interacted_with_entity-wrench
advancement revoke @s[advancements={galaxy:trigger/interacted_with_entity-crowbar=true}] only galaxy:trigger/interacted_with_entity-crowbar
advancement revoke @s[advancements={galaxy:trigger/interacted_with_entity-galaxy_custom_entity=true}] only galaxy:trigger/interacted_with_entity-galaxy_custom_entity
tag @s remove interactedWithGalaxyCustomEntity
