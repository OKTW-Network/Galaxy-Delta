scoreboard players set #slot buildGUI 13
scoreboard players operation #isWork buildGUI = @s workProc1CanWork
scoreboard players set #force buildGUI 0
execute unless predicate galaxy:gui/check_slot-13 run scoreboard players set #force buildGUI 1
function galaxy:gui/_build/process/1x1/main
