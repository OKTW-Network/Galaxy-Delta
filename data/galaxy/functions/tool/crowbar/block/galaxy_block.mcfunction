tag @e[tag=galaxy.block,distance=..0.05] add galaxy._tag.ThisCrowbarGalaxyBlockTarget

execute as @e[tag=galaxy._tag.ThisCrowbarGalaxyBlockTarget] run function galaxy:block/destruct

tag @e[tag=galaxy._tag.ThisCrowbarGalaxyBlockTarget] remove galaxy._tag.ThisCrowbarGalaxyBlockTarget

tag @s remove galaxy._task.crowbar.doGalaxyBlock
