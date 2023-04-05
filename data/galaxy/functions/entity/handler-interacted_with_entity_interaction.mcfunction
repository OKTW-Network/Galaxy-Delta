tag @s add galaxy._tag.ThisPlayer

execute as @e[tag=galaxy._tag.trigger.interacted_with_entity_interaction.target] run function galaxy:entity/execute

tag @s remove galaxy._tag.ThisPlayer
