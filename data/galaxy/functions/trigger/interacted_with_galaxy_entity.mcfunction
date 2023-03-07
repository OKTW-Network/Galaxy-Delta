execute if entity @s[advancements={galaxy:trigger/use_wrench_on_galaxy_entity=false,galaxy:trigger/use_crowbar_on_galaxy_entity=false}] run function galaxy:entity/handler-interacted_with_galaxy_entity
execute if entity @s[advancements={galaxy:trigger/use_wrench_on_galaxy_entity=true}] run function galaxy:tool/wrench/handler-use_wrench_on_galaxy_entity
execute if entity @s[advancements={galaxy:trigger/use_crowbar_on_galaxy_entity=true}] run function galaxy:tool/crowbar/handler-use_crowbar_on_galaxy_entity
execute if entity @s[advancements={galaxy:trigger/use_wrench_on_galaxy_entity=true}] run advancement revoke @s only galaxy:trigger/use_wrench_on_galaxy_entity
execute if entity @s[advancements={galaxy:trigger/use_crowbar_on_galaxy_entity=true}] run advancement revoke @s only galaxy:trigger/use_crowbar_on_galaxy_entity
execute if entity @s[advancements={galaxy:trigger/interacted_with_galaxy_entity=true}] run advancement revoke @s only galaxy:trigger/interacted_with_galaxy_entity
tag @s remove galaxy._tag.trigger.interactedWithGalaxyEntity
