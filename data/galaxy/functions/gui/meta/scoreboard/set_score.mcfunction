# HTct init
scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] guiMode 0

scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] guiPage 1

scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] htctCategory 1

scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] setGuiPage 1

scoreboard players set @e[tag=hi-tech_crafting_table,tag=function_place] setHTctCategory 1

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] canPagePrev 0

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] canPageNext 0

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] guiPageMax 0

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctCatgMax 0

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] guiPageTemp 0

scoreboard players remove @e[tag=hi-tech_crafting_table,tag=function_place] htctCategoryTemp 0

tag @e[tag=hi-tech_crafting_table,tag=function_place] remove function_place
