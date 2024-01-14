tag @s add galaxy._task.assembly_table.buildAlterationPageButton

scoreboard players operation #1 temp = @s galaxy.block.assembly_table.alterationPageNumber
execute if score @s galaxy.block.assembly_table.alterationPageNumberMax matches 2.. unless predicate galaxy:gui/assembly_table/home/right_panel/page_button/page_previous run scoreboard players remove @s galaxy.block.assembly_table.alterationPageNumber 1
execute if score @s galaxy.block.assembly_table.alterationPageNumberMax matches 2.. unless predicate galaxy:gui/assembly_table/home/right_panel/page_button/page_next run scoreboard players add @s galaxy.block.assembly_table.alterationPageNumber 1
execute if score @s galaxy.block.assembly_table.alterationPageNumber > @s galaxy.block.assembly_table.alterationPageNumberMax run scoreboard players set @s galaxy.block.assembly_table.alterationPageNumber 1
execute if score @s galaxy.block.assembly_table.alterationPageNumber matches ..0 run scoreboard players operation @s galaxy.block.assembly_table.alterationPageNumber = @s galaxy.block.assembly_table.alterationPageNumberMax
execute unless score #1 temp = @s galaxy.block.assembly_table.alterationPageNumber run tag @s add galaxy._tag.assembly_table.alterationPageChanged
execute if entity @s[tag=galaxy._tag.assembly_table.alterationPageChanged] run function galaxy:block/assembly_table/functional/alteration_page/get_slot_max
execute if entity @s[tag=galaxy._tag.assembly_table.alterationPageChanged] run tag @s add galaxy._task.assembly_table.buildAlterationPage
execute if entity @s[tag=galaxy._tag.assembly_table.alterationPageChanged] run scoreboard players set #block.assembly_table.guiAction galaxy 1
tag @s[tag=galaxy._tag.assembly_table.alterationPageChanged] remove galaxy._tag.assembly_table.alterationPageChanged
