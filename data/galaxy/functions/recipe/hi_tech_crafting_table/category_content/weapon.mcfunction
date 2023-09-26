data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content append value {type:"overview",id:"galaxy:weapon_component",categoryNumber:1,icon:{}}
data modify storage galaxy:get item set value []
function galaxy:weapon/get/_icon_gun_pistol
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content[-1].icon set from storage galaxy:get item[-1]

data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content append value {type:"overview",id:"galaxy:weapon_component",categoryNumber:2,icon:{}}
data modify storage galaxy:get item set value []
function galaxy:weapon/get/_icon_katana_steel
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content[-1].icon set from storage galaxy:get item[-1]

function #galaxy:recipe/hi_tech_crafting_table/get_category_content/weapon
