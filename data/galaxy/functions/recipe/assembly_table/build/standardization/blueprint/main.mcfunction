data modify storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint set from storage galaxy:recipe assembly_table.blueprint
data remove storage galaxy:recipe assembly_table.blueprint
scoreboard players set #recipe.assembly_table.build.standardization._recursiveCount galaxy 0
function galaxy:recipe/assembly_table/build/standardization/blueprint/_recursive
