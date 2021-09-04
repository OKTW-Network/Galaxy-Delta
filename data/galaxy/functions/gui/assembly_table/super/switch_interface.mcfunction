execute if entity @s[tag=switchToInterface.main] run scoreboard players set @s guiInterface 0
execute if entity @s[tag=switchToInterface.advanced_value] run scoreboard players set @s guiInterface 1

tag @s[tag=switchToInterface.main] remove switchToInterface.main
tag @s[tag=switchToInterface.advanced_value] remove switchToInterface.advanced_value

tag @s add lockGUISwitch

function galaxy:gui/assembly_table/super/update
