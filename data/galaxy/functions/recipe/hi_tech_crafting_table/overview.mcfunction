data modify storage galaxy:recipe hi_tech_crafting_table.overview append value {id:"galaxy:gun_component",category:[]}
data modify storage galaxy:recipe hi_tech_crafting_table.overview[-1].category append from storage galaxy:recipe hi_tech_crafting_table.category[{id:"galaxy:gun_component"}]

function #galaxy:recipe/hi_tech_crafting_table/build_overview
