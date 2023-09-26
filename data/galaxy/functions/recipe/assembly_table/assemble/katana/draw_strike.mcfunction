data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.draw_strike.id set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_draw_strike"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.id
data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.draw_strike.name set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"katana_draw_strike"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.name

data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.damage_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
execute store result score #percent.base math run data get storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.attack_damage
function math:percent/main
scoreboard players operation #percent.result math > #0 num
scoreboard players set #1 temp 99999
execute store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.draw_strike.damage int 1 run scoreboard players operation #percent.result math < #1 temp

data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.effect_strength_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
execute store result score #percent.base math run data get storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.effect_strength_value
function math:percent/main
execute store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.draw_strike.effect_strength int 1 run scoreboard players operation #percent.result math > #0 num

data modify storage math:io addition.input append from storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.cooldown_modifier
function math:addition/main
scoreboard players set #percent.modifier math 100
scoreboard players operation #percent.modifier math += #addition.result math
execute store result score #percent.base math run data get storage galaxy:temp +recipe.assembly_table.assemble._parts[].tag.CustomData.galaxy.tag.component.Alteration."galaxy.katana".draw_strike.cooldown_value
function math:percent/main
execute store result storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.draw_strike.cooldown int 1 run scoreboard players operation #percent.result math > #0 num
