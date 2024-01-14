scoreboard players set #recipe.assembly_table.resultItemType galaxy 1
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_scabbard"}}}}}}] run scoreboard players set #recipe.assembly_table.resultItemType galaxy 0

data modify storage galaxy:temp +recipe.assembly_table.assemble._parts set from entity @s data.galaxy.assembly_table.parts
data remove storage galaxy:temp +recipe.assembly_table.assemble._parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_scabbard"}}}}}}]

data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.type set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_blade"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.type
function galaxy:recipe/assembly_table/assemble/katana/attack_damage
function galaxy:recipe/assembly_table/assemble/katana/attack_speed
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_skill"}}}}}}] run function galaxy:recipe/assembly_table/assemble/katana/skill
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_draw_strike"}}}}}}] run function galaxy:recipe/assembly_table/assemble/katana/draw_strike

data modify storage galaxy:get item set value []
execute if score #recipe.assembly_table.resultItemType galaxy matches 1 run function galaxy:weapon/get/_dummy_katana_blade
execute if score #recipe.assembly_table.resultItemType galaxy matches 0 run function galaxy:weapon/get/_dummy_katana
data modify storage galaxy:temp +recipe.assembly_table.assemble.result set from storage galaxy:get item[0]
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag merge from storage galaxy:temp +recipe.assembly_table.assemble._customAttribute
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.bladeAttributeModifier set from storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers
execute if score #recipe.assembly_table.resultItemType galaxy matches 1 run data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.AttributeModifiers set from storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers
execute store result score #recipe.assembly_table.resultCustomModelData galaxy run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_blade"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.model
execute store result storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomModelData int 1 run scoreboard players operation #recipe.assembly_table.resultCustomModelData galaxy += #recipe.assembly_table.resultItemType galaxy
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +recipe.assembly_table.assemble._customAttribute
scoreboard players operation #weapon.katana.lore.itemType galaxy = #recipe.assembly_table.resultItemType galaxy
function galaxy:weapon/katana/lore/main
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.display.Lore set from storage galaxy:temp +weapon.katana.lore.result
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.display.Name set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_blade"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration[{id:"galaxy.katana"}].value.name
function cu:uuid/generate
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID set from storage cu:uuid generate.result
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.assemblyInfo.parts set from entity @s data.galaxy.assembly_table.parts
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.assemblyInfo.blueprintID set value "galaxy.katana"

data remove storage galaxy:temp +recipe.assembly_table.assemble._customAttribute
data remove storage galaxy:temp +recipe.assembly_table.assemble._attributeModifiers
