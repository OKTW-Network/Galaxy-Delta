execute unless predicate galaxy:gui/hi_tech_crafting_table/overview/category_row/all run function galaxy:block/hi_tech_crafting_table/functional/category/main
execute if entity @s[tag=!galaxy._tag.hi_tech_crafting_table.categoryChanged] unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page_button/all run function galaxy:block/hi_tech_crafting_table/functional/content_page/main
execute if entity @s[tag=!galaxy._tag.hi_tech_crafting_table.categoryChanged,tag=!galaxy._tag.hi_tech_crafting_table.contentPageChanged] unless predicate galaxy:gui/hi_tech_crafting_table/overview/content_page/overall run tag @s add galaxy._task.hi_tech_crafting_table.changeInterfaceFromContentPage