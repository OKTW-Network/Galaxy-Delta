function galaxy:block/coke_furnace/work/processor1/get-progress

scoreboard players set #slot buildGUI 12
scoreboard players operation #canWork buildGUI = @s workProc1CanWork
scoreboard players operation #progress buildGUI = @s workProc1Prog
scoreboard players set #force buildGUI 0
execute unless predicate galaxy:gui/check_slot-12 run scoreboard players set #force buildGUI 1
function galaxy:gui/_build/progress/1x2/main
