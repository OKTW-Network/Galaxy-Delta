data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon set from entity @s data.galaxy.hi_tech_crafting_table.previousCategoryIcon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon merge value {Slot:1b,tag:{CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.overview.category_row.top"}}}}
data modify block ~ ~ ~ Items append from storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon

data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon set from entity @s data.galaxy.hi_tech_crafting_table.category.icon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon merge value {Slot:10b,tag:{CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.overview.category_row.middle"}}}}
data modify block ~ ~ ~ Items append from storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon

data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon set from entity @s data.galaxy.hi_tech_crafting_table.nextCategoryIcon
data modify storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon merge value {Slot:19b,tag:{CustomData:{galaxy:{Type:"gui",id:"hi_tech_crafting_table.overview.category_row.bottom"}}}}
data modify block ~ ~ ~ Items append from storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon

data remove storage galaxy:temp +gui.hi_tech_crafting_table.build-category_row.icon
