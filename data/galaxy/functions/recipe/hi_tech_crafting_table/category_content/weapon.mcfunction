data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content append from storage galaxy:recipe hi_tech_crafting_table.recipe[{id:"galaxy:steel_katana"}]
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content append value {type:"overview",id:"galaxy:gun_component",icon:{}}
data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_gun_pistol
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content[-1].icon set from storage galaxy:get item[0]
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].content[-1].icon.tag merge value {display:{Name:'{"translate":"item.galaxy.gun","italic":false}'}}

function #galaxy:recipe/hi_tech_crafting_table/get_category_content/weapon
