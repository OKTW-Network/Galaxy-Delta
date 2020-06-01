execute if entity @s[tag=switchToMode0] run scoreboard players set @s guiMode 0
execute if entity @s[tag=switchToMode1] run scoreboard players set @s guiMode 1
tag @s[tag=switchToMode0] remove switchToMode0
tag @s[tag=switchToMode1] remove switchToMode1
function galaxy:gui/hi-tech_crafting_table/update
