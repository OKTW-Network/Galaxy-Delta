scoreboard players set #slot buildGUI 13
scoreboard players set #isWork buildGUI 0
execute if score @s workProc1CanWork matches 1 if score @s workProc1Burn matches 1.. run scoreboard players set #isWork buildGUI 1
execute if score @s workProc1CanWork matches -1 run scoreboard players set #isWork buildGUI -1
scoreboard players set #force buildGUI 0
execute unless predicate galaxy:gui/check_slot-13 run scoreboard players set #force buildGUI 1
function galaxy:gui/_build/process/1x1/main
