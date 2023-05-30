execute unless predicate galaxy:gui/assembly_table/home/blueprint_page_button/all run function galaxy:block/assembly_table/functional/blueprint_page/main
execute if entity @s[tag=!galaxy._tag.assembly_table.blueprintPageChanged] unless predicate galaxy:gui/assembly_table/home/blueprint_page/overall run tag @s add galaxy._task.assembly_table.changeBlueprintFromBlueprintPage
