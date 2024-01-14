data modify storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers append value {AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Operation:0,Amount:0d,UUID:[I;-98353636,1098926181,-1340359474,-1752847197]}
data modify storage math:io average.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.attack_speed_value
function math:average/main
scoreboard players operation #recipe.assembly_table.resultCustomAttributeValue galaxy = #average.result math
data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.attack_speed_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
scoreboard players operation #percent.base math = #recipe.assembly_table.resultCustomAttributeValue galaxy
function math:percent/main
scoreboard players operation #percent.result math > #90 num
execute store result storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers[-1].Amount double 0.01 store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.attack_speed int 1 run scoreboard players remove #percent.result math 400
