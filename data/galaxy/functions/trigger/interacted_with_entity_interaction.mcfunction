tag @e[tag=galaxy.entity_interaction,nbt={interaction:{}}] add cu._tag.entity.interaction.find_corresponding_interaction.candidate
scoreboard players set #entity.interaction.find_corresponding_interaction.findFromCandidates cu 1
data modify storage cu:entity interaction.find_corresponding_interaction.input set from entity @s UUID
function cu:entity/interaction/find_corresponding_interaction/main
tag @e[tag=cu._tag.entity.interaction.find_corresponding_interaction.elect] add galaxy._tag.trigger.interacted_with_entity_interaction.corresponding
execute as @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.corresponding] on passengers if entity @s[tag=galaxy.entity_interaction_data] run data modify storage cu:entity find_uuid.input append from entity @s data.galaxy.interactionTarget
execute at @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.corresponding] run function cu:entity/find_uuid/main
tag @e[tag=cu._tag.entity.find_uuid.elect] add galaxy._tag.trigger.interacted_with_entity_interaction.target

execute if entity @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.corresponding] run function galaxy:entity/handler-interacted_with_entity_interaction

execute as @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.corresponding] run data remove entity @s interaction
tag @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.corresponding] remove galaxy._tag.trigger.interacted_with_entity_interaction.corresponding
tag @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.target] remove galaxy._tag.trigger.interacted_with_entity_interaction.target

execute if entity @s[advancements={galaxy:trigger/interacted_with_entity_interaction=true}] run advancement revoke @s only galaxy:trigger/interacted_with_entity_interaction
