data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:katana_component.katana_draw_strike_flash",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
data modify storage galaxy:temp +component.get.tag.alterationTarget set value "galaxy.katana"
function galaxy:component/get/katana_draw_strike_flash
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[-1]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement set from storage galaxy:recipe hi_tech_crafting_table.recipe[{id:"galaxy:katana_draw_strike_flash"}].requirement
