data modify storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers append value {AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:0d,UUID:[I;-885041709,1683771192,-1533567981,-1556236849]}
data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.attack_damage_value
function math:addition/main
scoreboard players operation #recipe.assembly_table.resultCustomAttributeValue galaxy = #addition.result math
data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.attack_damage_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
scoreboard players operation #percent.base math = #recipe.assembly_table.resultCustomAttributeValue galaxy
function math:percent/main
execute store result storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers[-1].Amount double 0.01 store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.attack_damage int 1 run scoreboard players operation #percent.result math > #0 num
