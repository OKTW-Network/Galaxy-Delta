execute unless predicate galaxy:advancement/triggered-interacted_with_entity-wrench unless predicate galaxy:advancement/triggered-interacted_with_entity-crowbar run function galaxy:entity/handler-interacted_with_entity-galaxy_custom_entity
execute if predicate galaxy:advancement/triggered-interacted_with_entity-wrench run function galaxy:tool/wrench/handler-interacted_with_entity-galaxy_custom_entity
execute if predicate galaxy:advancement/triggered-interacted_with_entity-crowbar run function galaxy:tool/crowbar/handler-interacted_with_entity-galaxy_custom_entity
advancement revoke @s only galaxy:trigger/interacted_with_entity-wrench
advancement revoke @s only galaxy:trigger/interacted_with_entity-crowbar
advancement revoke @s only galaxy:trigger/interacted_with_entity-galaxy_custom_entity
tag @s remove interactedWithGalaxyCustomEntity
