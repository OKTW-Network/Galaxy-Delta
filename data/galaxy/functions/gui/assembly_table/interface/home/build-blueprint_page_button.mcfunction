data modify block ~ ~ ~ Items append from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{group:["assembly_table.home.blueprint_page_button"]}}}}]
execute if score #recipe.assembly_table.blueprintPageMax galaxy matches 2.. run data modify block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{id:"assembly_table.home.blueprint_page_button.page_previous"}}}}].tag merge from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{id:"assembly_table.home.blueprint_page_button.page_previous"}}}}].tag.CustomData.galaxy.form.available
execute if score #recipe.assembly_table.blueprintPageMax galaxy matches 2.. run data modify block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{id:"assembly_table.home.blueprint_page_button.page_next"}}}}].tag merge from storage galaxy:recipe assembly_table.gui.home[{tag:{CustomData:{galaxy:{id:"assembly_table.home.blueprint_page_button.page_next"}}}}].tag.CustomData.galaxy.form.available
