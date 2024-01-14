data modify storage math:io addition.input append from entity @s data.galaxy.assembly_table.parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.gun"}].value.aim_zoom_value
function math:addition/main
scoreboard players operation #recipe.assembly_table.resultCustomAttributeValue galaxy = #addition.result math
data modify storage math:io addition.input append from entity @s data.galaxy.assembly_table.parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.gun"}].value.aim_zoom_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
scoreboard players operation #percent.base math = #recipe.assembly_table.resultCustomAttributeValue galaxy
function math:percent/main
scoreboard players operation #percent.result math > #1 num
execute store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.aim_zoom int 1 run scoreboard players operation #percent.result math < #7 num
