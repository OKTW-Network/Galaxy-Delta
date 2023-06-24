data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:gun_component.gun_sight_clear",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
data modify storage galaxy:temp +component.get.tag.alterationTarget set value "galaxy.gun"
function galaxy:component/get/gun_sight_clear
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement set from storage galaxy:recipe hi_tech_crafting_table.recipe[{id:"galaxy:gun_sight_clear"}].requirement
