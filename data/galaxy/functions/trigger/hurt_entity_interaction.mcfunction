tag @e[tag=galaxy.entity_interaction,nbt={attack:{}}] add cu._tag.entity.interaction.find_corresponding_attack.candidate
scoreboard players set #entity.interaction.find_corresponding_attack.findFromCandidates cu 1
data modify storage cu:entity interaction.find_corresponding_attack.input set from entity @s UUID
function cu:entity/interaction/find_corresponding_attack/main
tag @e[tag=cu._tag.entity.interaction.find_corresponding_attack.elect] add galaxy._tag.trigger.hurt_entity_interaction.corresponding
execute as @e[tag=galaxy._tag.trigger.hurt_entity_interaction.corresponding] on passengers if entity @s[tag=galaxy.entity_interaction_data] run data modify storage cu:entity find_uuid.input append from entity @s data.galaxy.interactionTarget
execute at @e[tag=galaxy._tag.trigger.hurt_entity_interaction.corresponding] run function cu:entity/find_uuid/main
tag @e[tag=cu._tag.entity.find_uuid.elect] add galaxy._tag.trigger.hurt_entity_interaction.target

execute if entity @e[tag=galaxy._tag.trigger.hurt_entity_interaction.corresponding] run function galaxy:entity/handler-hurt_entity_interaction

execute as @e[tag=galaxy._tag.trigger.hurt_entity_interaction.corresponding] run data remove entity @s attack
tag @e[tag=galaxy._tag.trigger.hurt_entity_interaction.corresponding] remove galaxy._tag.trigger.hurt_entity_interaction.corresponding
tag @e[tag=galaxy._tag.trigger.hurt_entity_interaction.target] remove galaxy._tag.trigger.hurt_entity_interaction.target

execute if entity @s[advancements={galaxy:trigger/hurt_entity_interaction=true}] run advancement revoke @s only galaxy:trigger/hurt_entity_interaction
