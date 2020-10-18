# relplace the block when GUI contains non-guiItem
execute store result score @s countItems if data block ~ ~ ~ Items[]
execute store result score @s countTags if data block ~ ~ ~ Items[].tag.guiItem
execute if score @s countItems > @s countTags run function galaxy:block/hi-tech_crafting_table/replace

#gui
execute if score @s guiMode matches 0 run function galaxy:gui/hi-tech_crafting_table/mode0/main
execute if score @s guiMode matches 1 run function galaxy:gui/hi-tech_crafting_table/mode1/main
