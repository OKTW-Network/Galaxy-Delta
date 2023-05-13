execute unless predicate galaxy:gui/hi_tech_crafting_table/recipe/requirement_page_button/all run function galaxy:block/hi_tech_crafting_table/functional/requirement_page/main
execute if entity @s[tag=!galaxy._tag.hi_tech_crafting_table.requirementPageChanged] unless predicate galaxy:gui/hi_tech_crafting_table/recipe/result run function galaxy:block/hi_tech_crafting_table/functional/craft
