execute if entity @a[tag=galaxy._tag.ThisCrowbarUser,predicate=minecraft:entity_properties/sneaking] run tag @s add galaxy._task.empower_lens.destruct

execute if entity @s[tag=galaxy._task.empower_lens.destruct] run function galaxy:entity/empower_lens/main
