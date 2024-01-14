tag @s add galaxy._task.assembly_table.buildBlueprintPageButton

scoreboard players operation #1 temp = @s galaxy.block.assembly_table.blueprintPageNumber
execute if score #recipe.assembly_table.blueprintPageMax galaxy matches 2.. unless predicate galaxy:gui/assembly_table/home/right_panel/page_button/page_previous run scoreboard players remove @s galaxy.block.assembly_table.blueprintPageNumber 1
execute if score #recipe.assembly_table.blueprintPageMax galaxy matches 2.. unless predicate galaxy:gui/assembly_table/home/right_panel/page_button/page_next run scoreboard players add @s galaxy.block.assembly_table.blueprintPageNumber 1
execute if score @s galaxy.block.assembly_table.blueprintPageNumber > #recipe.assembly_table.blueprintPageMax galaxy run scoreboard players set @s galaxy.block.assembly_table.blueprintPageNumber 1
execute if score @s galaxy.block.assembly_table.blueprintPageNumber matches ..0 run scoreboard players operation @s galaxy.block.assembly_table.blueprintPageNumber = #recipe.assembly_table.blueprintPageMax galaxy
execute unless score #1 temp = @s galaxy.block.assembly_table.blueprintPageNumber run tag @s add galaxy._tag.assembly_table.blueprintPageChanged
execute if entity @s[tag=galaxy._tag.assembly_table.blueprintPageChanged] run function galaxy:block/assembly_table/functional/blueprint_page/get_slot_max
execute if entity @s[tag=galaxy._tag.assembly_table.blueprintPageChanged] run tag @s add galaxy._task.assembly_table.buildBlueprintPage
execute if entity @s[tag=galaxy._tag.assembly_table.blueprintPageChanged] run scoreboard players set #block.assembly_table.guiAction galaxy 1
tag @s[tag=galaxy._tag.assembly_table.blueprintPageChanged] remove galaxy._tag.assembly_table.blueprintPageChanged
